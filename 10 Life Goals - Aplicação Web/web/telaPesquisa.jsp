<%-- 
    Document   : telaPesquisa]
    Created on : 12/06/2018, 22:42:21
    Author     : Beatriz Guimarães
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.PessoaDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Pessoa"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals - Pesquisa</title>
        <link rel="icon" href="../img/cerejas.png">

        
        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="../css/telaAjuda.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                
                    <i class="fa fa-bars"></i>
                </button>
                
                <form class="form-inline" id="divPesquisa" action="telaPesquisa.jsp" >
                  <input class="form-control mr-sm-2" type="text" name="txtPesquisa" id="txtPesquisa" placeholder="Pesquisar"/>
                  <BUTTON class="btn btn-outline-sucess my-2 my-sm-0" id="btnPesquisa"><img src="../img/lupa.png" id="iconPesquisa" alt="pesquisar"/></BUTTON>
                </form>
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="telaInicio.jsp">Início</a><!--services-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="telaPerfil.jsp">Perfil</a><!--portfolio-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="telaMetas.jsp">Metas</a><!--about-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="telaAjuda.jsp">Ajuda</a> <!--time-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="index.jsp">Sair</a> <!--time-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>
        <section>
            <div class="container col-md-8">
                <br>
                <br>
                <br>
                <table class="table">
                    <tr>
                        <th>Usuários Correspondentes</th>
                    </tr>
              <% PessoaDao dao = new PessoaDao();
                      ArrayList<Pessoa> p = dao.listarFiltro(request.getParameter("txtPesquisa"));

                      for (Pessoa pessoa : p ) {
                      %>
                      <tr>
                          <td><a href="telaOutroUsuario.jsp?id=<%=pessoa.getUsuario()%>"> <%=pessoa.getUsuario() %> </a></td> 
                          </tr>
                      
                     <% }%>
                </table>
            </div>
            </section>
            

        
       
                     <!-- Footer -->
                    <footer class="bg-light">
                        <div class="container" >
                            <div class="row">
                                <div class="col-md-6">
                                    <span class="hearts">10 Life Goals &#127826; Seu Website 2018</span>
                                </div>
                                
                                <div class="col-md-6">
                                        
                                </div>
                            </div>
                        </div>
                    </footer>
        
     

                   <!-- Bootstrap core JavaScript -->
                    <script src="../vendor/jquery/jquery.min.js"></script>
                    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- Plugin JavaScript -->
                    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Contact form JavaScript -->
                    <script src="../js/jqBootstrapValidation.js"></script>
                    <script src="../js/contact_me.js"></script>

                    <!-- Custom scripts for this template -->
                    <script src="../js/agency.min.js"></script>

                    </body>

                    </html>
