/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.ComentaDao;
import dao.SalvaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Meta;
import model.PessoaComentaMeta;
import model.PessoaSalvaMeta;

/**
 *
 * @author BRUNA MARIANA
 */
@WebServlet(urlPatterns = "/comentarios")
public class comenta_Servlet extends HttpServlet {

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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        
        String acao = request.getParameter("acao");
        String usuarioLogado;
        String comentario;
        ArrayList<PessoaComentaMeta> c = new ArrayList<PessoaComentaMeta>();
        int numMeta;
        //int i;
        //int num = Integer.parseInt(request.getSession().getAttribute("numMeta").toString());
        //String strURL1="telaInicio.jsp";
              
        PessoaComentaMeta p = new PessoaComentaMeta();
        ComentaDao cdao = new ComentaDao();
        

        if (acao.equals("Enviar")) {
            System.out.println("entro no if da acao");
            usuarioLogado = request.getParameter("usuarioLogado");
            comentario = request.getParameter("comentario");
            numMeta = Integer.parseInt(request.getParameter("id_meta"));
           
            
            if(teste(numMeta,comentario)==true){
                System.out.println("entrou na condicao");
                p = new PessoaComentaMeta(comentario, usuarioLogado, numMeta); // de acordo com o construtor la

                cdao.salvar(p);

                RequestDispatcher dispatcher = request.getRequestDispatcher("telaInicio.jsp");
                dispatcher.forward(request, response);
                //} 
              //  i++;
            }
           
        }
        
          
    }
    
    public boolean teste(int numMeta, String comentario){
        ArrayList<PessoaComentaMeta> c = new ArrayList<PessoaComentaMeta>();
        ComentaDao cdao = new ComentaDao();
        boolean tem = false;

        c = cdao.listarFiltro(numMeta);
           //i = 0;
            /*while ((i <= c.size())) {
                if (!c.get(i).getComentario().equals(comentario)) {
                    System.out.println("entro na condicao");
                    if(c.isEmpty()){*/
            if(!c.isEmpty()){
            for(int i=0; i< c.size(); i++){
                System.out.println("entrei no for");
                    if(!(c.get(i).getComentario().equals(comentario))){
                        System.out.println("entrei nesse if");
                        tem = true;
                    }else{
                        if(c.get(i).equals(c.get(c.size()-1))){
                            System.out.println("entrei no else");
                            tem=false;
                        }
                    }
                    
            }}else{
                tem=true;
            }
            return tem;
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
