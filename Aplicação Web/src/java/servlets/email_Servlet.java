/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.mail.MessagingException;
import javax.mail.internet.AddressException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import mail.JavaMailApp;
import model.Pessoa;

/**
 *
 * @author BRUNA MARIANA
 */
@WebServlet(name = "email_Servlet", urlPatterns = "/email")
public class email_Servlet extends HttpServlet {

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
        String acao = request.getParameter("acao");
        JavaMailApp mail = new JavaMailApp();
        System.out.println("chamu");
        if (acao.equals("Senha")) {
            System.out.println("etrou na acao");
            String email = request.getParameter("Email") == null ? "" : request.getParameter("Email");
            Pessoa pessoa = mail.buscarEmail(email);
            System.out.println("etrou no if acao");
            String nomeP = pessoa.getUsuario();
            String loginP = pessoa.getEmail();
            String senhaP = pessoa.getSenha();

            String mensagem;
            mensagem = "<H4>Olá sr.(a) " + nomeP + "</H4>"
                    + "<BR>"
                    + "<P> Recebemos uma solicitação para informação da senha para este e-mail, caso não tenha feito esta solicitação, favor desconsiderar a mensagem.</P>"
                    + "<BR>"
                    + "<P>Os dados solicitados são: </P>"
                    + "<UL>"
                    + "<LI><B> Login: </B>" + loginP
                    + "<LI><B> Senha: </B>" + senhaP
                    + "</UL>"
                    + "<BR>"
                    + "<P> Atenciosamente, </P>"
                    + "<BR>"
                    + "<P> Equipe 10LifeGoals </P>"
                    + "<BR> \n";

            String mailServer = "smtp.googlemail.com";
            String assunto = "Lembraça de Senha";

            try {
                System.out.println("tentando");
                if (mail.enviarMail(mailServer, email, assunto, mensagem, "10lifegoals@gmail.com")) {
                    request.setAttribute("msg", "Envio concluído com sucesso, confira seu e-mail!");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } else {
                    request.setAttribute("msg", "Falha ao enviar e-mail!");
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                }
            } catch (AddressException e) {
                request.setAttribute("msg", "Endereço de Email inválido");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                System.out.println("entrei no primeio catch");
            } catch (MessagingException e) {
                request.setAttribute("msg", "Impossível enviar o email.");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                System.out.println("entrei no secod catch");

            }
        }

        if (acao.equals("Ajuda")) {
            System.out.println("etrou na acao ajuda");
            Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");
            System.out.println("etrou no if acao");
            String nomeP = pessoa.getUsuario();
            String emailP = pessoa.getEmail();
            String senhaP = pessoa.getSenha();

            String msg = request.getParameter("caixa").toString();
            String mensagem;
            mensagem = "<H4>Olá sr.(a) " + nomeP + "</H4>"
                    + "<BR>"
                    + "<P> Agradecemos a sua mensagem, através dela poderemos melhorar os serviços do 10LifeGoals.</P>"
                    + "<BR>"
                    + "<P> Atenciosamente, </P>"
                    + "<BR>"
                    + "<P> Equipe 10LifeGoals. </P>"
                    + "<BR> \n";

            String mailServer = "smtp.googlemail.com";
            String assunto = "Equipe 10LifeGoals";
            String assu = "Pergunta, Sugestão ou Reclamação - 10LifeGoals";

            try {
                System.out.println("tentando");
                if (mail.enviarMail(mailServer, emailP, assunto, mensagem, "10lifegoals@gmail.com")) {
                    request.setAttribute("msg", "Envio concluído com sucesso");
                    request.getRequestDispatcher("telaAjuda.jsp").forward(request, response);
                    mail.enviarMail(mailServer, "10lifegoals@gmail.com", assu, msg, emailP);
                } else {
                    request.setAttribute("msg", "Falha ao enviar e-mail!");
                    request.getRequestDispatcher("telaAjuda.jsp").forward(request, response);
                }
            } catch (AddressException e) {
                request.setAttribute("msg", "Endereço de Email inválido");
                request.getRequestDispatcher("telaAjuda.jsp").forward(request, response);
                System.out.println("entrei no primeio catch");
            } catch (MessagingException e) {
                request.setAttribute("msg", "Impossível enviar o email.");
                request.getRequestDispatcher("telaAjuda.jsp").forward(request, response);
                System.out.println("entrei no secod catch");

            }
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
