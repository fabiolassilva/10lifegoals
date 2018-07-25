/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.PessoaDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Pessoa;

/**
 *
 * @author BEATRIZ GUIMARÃES
 */
@WebServlet(urlPatterns = "/login")

public class login_cadastro_Servlet extends HttpServlet {

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
        Pessoa p = new Pessoa();
        PessoaDao pdao = new PessoaDao();
        String usuario;
        String senha;
        String acao = request.getParameter("acao");
        String email;
        String nome;
        String termos;

        String strURL1 = "index.jsp";
        String strURL2 ="telaInicio.jsp";

        if (acao.equals("Entrar")) {
            usuario = request.getParameter("usuario");
            senha = request.getParameter("senha");

            p = pdao.login(usuario);

            if ((!p.getSenha().equals(senha) || p.getUsuario().equals("")) || p.getUsuario() == null) {
                RequestDispatcher dispatcher = request.getRequestDispatcher(strURL1);
                dispatcher.forward(request, response);
            } else {
                RequestDispatcher dispatcher = request.getRequestDispatcher(strURL2);
                dispatcher.forward(request, response);

            }
        }

        if (acao.equals("Criar")) {

            nome = request.getParameter("nome");
            usuario = request.getParameter("usuario");
            email = request.getParameter("email");
            senha = request.getParameter("senha");
            termos = request.getParameter("termos");

            p = new Pessoa(usuario, nome, senha, termos, email); // de acordo com o construtor la

            pdao.salvar(p);

            RequestDispatcher dispatcher = request.getRequestDispatcher(strURL2);
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

    private void processRequest(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
