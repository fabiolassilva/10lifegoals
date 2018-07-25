/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.PessoaDao;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import model.Conversao;
import model.Pessoa;

/**
 *
 * @author BRUNA MARIANA
 */
@WebServlet(urlPatterns = "/perfil")
public class perfil_Servlet extends HttpServlet {
    

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
        Pessoa p = new Pessoa();
        PessoaDao pdao = new PessoaDao();
        String usuario;
        String senha;
        String dataN;
        String acao = request.getParameter("acao");
        String email;
        String bio;
        String nome;
        String data;
       /* String strDiaNasc;
        String strMesNasc;
        String strAnoNasc;
        Conversao converter = new Conversao();
        Date dtDataNascimento;
        String strDataInvertida;*/
                        
        if (acao.equals("Salvar")) {
            System.out.println("entrei no acao salvar");
            nome = request.getParameter("nome");
            //usuario = request.getParameter("nomeUsuario");
            //dataN = request.getParameter("nascimento");
            email = request.getParameter("email");
            bio = request.getParameter("bio");
           /* strDiaNasc = request.getParameter("txtDiaNascimento");
            strMesNasc = request.getParameter("txtMesNascimento");
            strAnoNasc = request.getParameter("txtAnoNascimento");
            */
            
        
            if(!request.getParameter("novasenha").isEmpty()){
                senha = request.getParameter("novasenha");
            }else{
                senha = request.getParameter("senha");

            }
            
            Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");
            
            pessoa.setBio(bio);
            pessoa.setEmail(email);
            pessoa.setSenha(senha);
            pessoa.setNome(nome);
            
            /*pessoa.setNascimento(strDiaNasc, strMesNasc, strAnoNasc);
            
            dtDataNascimento = converter.StringToDate(pessoa.getNascimento());
            if(dtDataNascimento != null){
                strDataInvertida = converter.DataInvertida(dtDataNascimento);
                pessoa.setDataNasc(strDataInvertida);
            }else{
                strDataInvertida = "null";
                pessoa.setDataNasc(strDataInvertida);

            }*/
            
            pdao.altera(pessoa);
            
            // p = new Pessoa(nome, senha, email, bio, true); // de acordo com o construtor la

            //pdao.salvar(p);
            //inicio parte que adicionei
            RequestDispatcher dispatcher = request.getRequestDispatcher("telaPerfil.jsp");
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
