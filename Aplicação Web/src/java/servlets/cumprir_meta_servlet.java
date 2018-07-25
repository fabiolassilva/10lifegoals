
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.MetaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Meta;
import model.Pessoa;

/**
 *
 * @author BRUNA MARIANA
 */
public class cumprir_meta_servlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Meta m;
        MetaDao mdao = new MetaDao();
        String descricao;
        int periodo;
        char situacao;
        int numero;
        String publica;
        String usuarioCria;
        int num;
        Meta meta;
        ArrayList<Meta> metas;

        String acao = request.getParameter("acao");
        String strURL1 = "telaMetas.jsp";
        Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");

        if (acao.equals("Concluida")) {
            System.out.println("entre no conluida");
            num = Integer.parseInt(request.getParameter("numeroM"));
            situacao = 's';
            
            metas = mdao.lista(pessoa.getUsuario());
            
           for(int i = 0; i< metas.size(); i++){
               System.out.println("entrou no for");
               if(metas.get(i).getNumero() == num){
                   System.out.println("entrou no if");
                    metas.get(i).setSituacao(situacao);
                    meta = metas.get(i);
                    mdao.altera(meta);
               }
           }
            //meta = (Meta) request.getSession().getAttribute("meta");
            
            
            RequestDispatcher dispatcher = request.getRequestDispatcher(strURL1);
            dispatcher.forward(request, response);
       
        }
        
         if (acao.equals("Salvar")) {
             System.out.println("entrei no salvar meta s");
                publica = request.getParameter("pub");
                periodo = Integer.parseInt(request.getParameter("per"));
                situacao = 'n';
                descricao = request.getParameter("descr");
                m = new Meta(publica, periodo, situacao, descricao, pessoa);
                mdao.salvar(m);
                
                
        RequestDispatcher dispatcher = request.getRequestDispatcher(strURL1);
        dispatcher.forward(request, response);
         }
             
        

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}