/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import dao.MetaDao;
import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Meta;
import model.Pessoa;

/**
 *
 * @author Beatriz Guimarães
 */
@WebServlet(name = "metas_Servlet", urlPatterns = {"/metas_Servlet"})
public class metas_Servlet extends HttpServlet {

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

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Meta m = new Meta();
        MetaDao mdao = new MetaDao();
        String acao = request.getParameter("acao");
        int numero;
        String publica;
        int periodo;
        char situacao;
        String usuarioCria;
        String descricao;
        String strURL1 = "telaInicio.jsp";
        ArrayList<String> metas;
        metas = new ArrayList();
        metas.add(request.getParameter("meta1"));
        metas.add(request.getParameter("meta2"));
        metas.add(request.getParameter("meta3"));
        metas.add(request.getParameter("meta4"));
        metas.add(request.getParameter("meta5"));
        metas.add(request.getParameter("meta6"));
        metas.add(request.getParameter("meta7"));
        metas.add(request.getParameter("meta8"));
        metas.add(request.getParameter("meta9"));
        metas.add(request.getParameter("meta10"));

        ArrayList<String> per;
        per = new ArrayList();
        per.add(request.getParameter("p1"));
        per.add(request.getParameter("p2"));
        per.add(request.getParameter("p3"));
        per.add(request.getParameter("p4"));
        per.add(request.getParameter("p5"));
        per.add(request.getParameter("p6"));
        per.add(request.getParameter("p7"));
        per.add(request.getParameter("p8"));
        per.add(request.getParameter("p9"));
        per.add(request.getParameter("p10"));

        ArrayList<String> publi;
        publi = new ArrayList();
        publi.add(request.getParameter("pub1"));
        publi.add(request.getParameter("pub2"));
        publi.add(request.getParameter("pub3"));
        publi.add(request.getParameter("pub4"));
        publi.add(request.getParameter("pub5"));
        publi.add(request.getParameter("pub6"));
        publi.add(request.getParameter("pub7"));
        publi.add(request.getParameter("pub8"));
        publi.add(request.getParameter("pub9"));
        publi.add(request.getParameter("pub10"));

        Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");
        if (acao.equals("Salvar")) {
            for (int i = 0; i < 10; i++) {
                publica = publi.get(i);
                periodo = Integer.parseInt(per.get(i));
                situacao = 'n';
                descricao = metas.get(i);
                m = new Meta(publica, periodo, situacao, descricao, pessoa);
                mdao.salvar(m);
                HttpSession session = request.getSession();
                session.setAttribute("meta", m);
                
            }
            HttpSession session = request.getSession();
            session.setAttribute("meta", m);
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
