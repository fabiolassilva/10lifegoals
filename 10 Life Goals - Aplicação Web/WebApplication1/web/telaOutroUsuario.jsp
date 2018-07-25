<%-- 
    Document   : telaOutroUsuario
    Created on : 08/06/2018, 13:35:18
    Author     : BEATRIZ GUIMARÃES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals</title>
        <link rel="icon" href="../img/cerejas.png">

        
        <!-- Bootstrap core CSS -->
        <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../css/telaOutroUsuario.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                
                <form class="form-inline" id="divPesquisa" >
                  <input class="form-control mr-sm-2" type="text" id="txtPesquisa" placeholder="Pesquisar"/> 
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
        
        <div id="aux">
            <section id="perfil">
                <div id="foto">
                    <img id="icone-user" alt="foto-user" src="../img/laranja.png"><br> <br>
                </div>

                <div id="username">
                    <label id="user">@laranjao</label>
                </div>
                <br><br>

                <div id="lista">
                    <a data-toggle="collapse" href="#semamigos" aria-expanded="false" aria-controls="semamigos">Lista de amigos</a><br>
                    <h6 class="collapse" id="semamigos">Este usuário ainda <br>não possui amigos.</h6>
                    <a data-toggle="collapse" href="#bio" aria-expanded="false" aria-controls="bio">Biografia</a><br>
                    <h6 class="collapse" id="bio" style="margin-left: 10px;">I'm a fruit citrus</h6>
                    <a data-toggle="collapse" href="#aniv" aria-expanded="false" aria-controls="aniv">Aniversário</a><br>
                    <h6 class="collapse" id="aniv" style="margin-left: 10px;">30/09</h6>
                </div>

             </section>
         
             <section id="metas">
                 
                 <div id="nome">
                     <label id="nomereal"><h2><b>Laranja</b></h2></label>
                 </div>
                 
                 <button id="solicitar">Solicitar</button>
                 <br><br><br><br><br><br><br>
                 
                 <div id="espaco-metas">
                    <h5 style="color: gray; font-size: 16px; margin-right: -500px;"><center>Este usuário ainda não possui metas.</center></h5>
                </div>
                 
             </section>
        </div>
       
                    <!-- Footer -->
        <div id="rodape">
                    <footer class="bg-light">
                        <div class="container" >
                            <div class="row">
                                <div class="col-md-6">
                                    <span class="hearts">10 Life Goals &#127826; Seu Website 2018</span>
                                </div>
                                
                                <div class="col-md-6">
                                    <a href="#">Termos de Uso</a>
                                </div>
                            </div>
                        </div>
                    </footer>
        </div>

                   <!-- Bootstrap core JavaScript -->
                    <script src="../vendor/jquery/jquery.min.js"></script>
                    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- Plugin JavaScript -->
                    <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Contact form JavaScript -->
                    <script src="../js/jqBootstrapValidation.js"></script>
                    <script src="../js/contact_me.js"></script>

                    <!-- Custom scripts for this template -->
                    <script src="../js/agency.min.js"></script>

                    </body>

                    </html>
