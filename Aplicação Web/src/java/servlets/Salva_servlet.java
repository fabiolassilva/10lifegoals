/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.SalvaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.PessoaSalvaMeta;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
@WebServlet(name = "Salva", urlPatterns = {"/Salva"})
public class Salva_servlet extends HttpServlet {

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
        processRequest(request, response);
        
        String acao = request.getParameter("acao");
        
        String usuarioLogado;
        String usuarioCriador;
        String descrMeta;
        
        String strURL1 = "telaInicio.jsp";
       
        PessoaSalvaMeta p;
        SalvaDao sdao = new SalvaDao();
        

        if (acao.equals("Salvar")) {

            usuarioLogado = request.getParameter("usuarioLogado");
            usuarioCriador = request.getParameter("usuarioCriador");
            descrMeta = request.getParameter("descrMeta");

            p = new PessoaSalvaMeta(usuarioLogado,usuarioCriador,descrMeta); // de acordo com o construtor la

            sdao.salvar(p);
            //inicio parte que adicionei
           

        }
       
         RequestDispatcher dispatcher = request.getRequestDispatcher(strURL1);
           dispatcher.forward(request, response);   
             
            //inicio parte que adicionei

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
