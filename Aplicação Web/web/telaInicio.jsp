<%-- 
    Document   : telaPerfil
    Created on : 08/06/2018, 13:35:46
    Author     : ELOUISE LOPES
--%>

<%@page import="model.PessoaSalvaMeta"%>
<%@page import="dao.SalvaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pessoa"%>

<%@page import="model.Meta"%>
<%@page import="model.PessoaComentaMeta"%>
<%@page import="dao.MetaDao"%>
<%@page import="dao.ComentaDao"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals - Início</title>
        <link rel="icon" href="img/cerejas.png">

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

        <!-- Custom styles for this template -->
        <link href="css/cadastrar-metas.css" rel="stylesheet">
        <link href="css/telaInicio.css" rel="stylesheet">

    </head>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">

                <i class="fa fa-bars"></i>
            </button>

            <form class="form-inline" id="divPesquisa" action="telaPesquisa.jsp">
                <input class="form-control mr-sm-2" type="
                       " id="txtPesquisa" name="txtPesquisa" placeholder="Pesquisar"/>
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
    <body>
        <form id="username" action="login_cadastro_servlet" method="post">
            <%
                Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");
            %>


        </form> 
        <div class="container" id = "corpo">
            <h2>Início</h2>
            <label name="usuarioLogado">ola <%=pessoa.getUsuario()%></label><p>Inspire-se com as metas de outras pessoas! </p>


            <div class="row">
                <div class="col-xs-6 col-sm-4">


                    <div>

                        <table class="table table-bordered">
                            <%
                                MetaDao dao = new MetaDao();
                                int num = 1;

                                ArrayList<Meta> metas = dao.listarInicio(pessoa.getUsuario());
                                for (int i = 0; i < 10; i++) {
                                    if (i < metas.size() - 1) {
                                        int numMeta = metas.get(i).getNumero();

                            %>
                            <tr>
                                <td>

                                    <div> 
                                        <div style="color: #10707f">
                                            <form action="Salva_servlet" method="post">

                                                <h6 name="usuarioCriador"><%=metas.get(i).getPessoa().getUsuario()%></h6>
                                                <p name="descrMeta"><%=metas.get(i).getDescricao()%>
                                                <button style="float: right" type="submit" id="btnSalvar" name="acao" value="Salvar" class="btn btn-primary mx-auto btn-small"><i  class="fa fa-plus" aria-hidden="true"></i></button>
                                                </p>  
                                                <input type="hidden" name="acao" value="Salvar">
                                                <input type="hidden" name="usuarioCriador" value="<%=metas.get(i).getPessoa().getUsuario()%>">
                                                <input type="hidden" name="descrMeta" value="<%=metas.get(i).getDescricao()%>">
                                                <input type="hidden" name="usuarioLogado" value="<%=pessoa.getUsuario()%>">



                                            </form>
                                        </div>
                                    </div>



                                    <span data-toggle="collapse" aria-expanded="false" aria-controls="comentarios" href="#comentarios">Comentários</span>
                                    <div class="collapse" id="comentarios" style="display:block"> 
                                        <form action="comenta_Servlet" method="post">
                                            <input type="text" name="comentario" id="inputComentario" placeholder="Digite seu comentario..." class="form-control" class="campo" size="310"/>
                                            <input type="hidden" name="id_meta" value="<%=metas.get(i).getNumero()%>">
                                            <input type="hidden" name="usuarioLogado" value="<%=pessoa.getUsuario()%>">
                                            <br>
                                            <input type="submit" name="acao" value="Enviar" class="btn btn-primary mx-auto btn-small"/>
                                            <input type="hidden" name="acao" value="Enviar"/>
                                        </form>

                                        <%
                                            ArrayList<PessoaComentaMeta> c;
                                            ComentaDao cdao = new ComentaDao();
                                            //num+=i;
                                            if (cdao.temAlgo()) {
                                                c = cdao.listar();

                                                int j = 0;
                                                //if(c!=null){
                                                while ((j <= c.size() - 1)) {
                                                    /*if(c.isEmpty()){
                                                        if((c.get(j).getComentario().equals(c.get(j+1).getComentario()))){
                                                           j++; 
                                                        }else{
                                                        System.out.println("entrou no while comentarios");*/
                                                    if ((c.get(j).getNumMeta() == metas.get(i).getNumero())) {

                                        %>

                                        <div class="comentarios" id="metas.get(i).getNumero()">
                                            <strong><%=c.get(j).getUsuarioLogado()%></strong>
                                            <p><%=c.get(j).getComentario()%></p>

                                            <!--<span calss="abre_respostas">Respostas</span>
                                                  <div id="respostas">
                                                    <div class="respostas">
                                                        <strong>Nome</strong>
                                                        <strong>Resposta</strong>
                                                    </div>
                                                    <form action="" method="post" name="formResp" id="formResp" style="padding: 10px;">
                                                        <input type="text" name="resposta" value="Digite sua resposta" class="form-control" class="campo" size="310">
                                                    </form> -->
                                        </div>
                                    </div>      
                                    </div> <!-- carios -->
                                </td>
                            </tr>
                            <%
                                                }
                                                j++;
                                            }
                                        }
                                    }
                                }
                                // }
                                //}
                            %>
                        </table>
                    </div>
                </div>


                <div class="col-xs-6 col-sm-4">
                    <div>
                        <table class="table table-bordered">
                            <%
                                for (int i = 10; i < 20; i++) {
                                    if (i < metas.size() - 1) {

                            %>
                            <tr>
                                <td>
                                    <div style="color: #10707f">
                                        <form action="Salva_servlet" method="post">
                                            <h6 name="usuarioCriador"><%=metas.get(i).getPessoa().getUsuario()%></h6>
                                                <p name="descrMeta"><%=metas.get(i).getDescricao()%>
                                                <button style="float: right" type="submit" id="btnSalvar" name="acao" value="Salvar" class="btn btn-primary mx-auto btn-small"><i  class="fa fa-plus" aria-hidden="true"></i></button>
                                                </p>  
                                                <input type="hidden" name="acao" value="Salvar">
                                                <input type="hidden" name="usuarioCriador" value="<%=metas.get(i).getPessoa().getUsuario()%>">
                                                <input type="hidden" name="descrMeta" value="<%=metas.get(i).getDescricao()%>">
                                                <input type="hidden" name="usuarioLogado" value="<%=pessoa.getUsuario()%>">


                                        </form>
                                    </div>

                                    <span data-toggle="collapse" aria-expanded="false" aria-controls="comentarios" href="#comentarios">Comentários</span>

                                    <div  class="collapse" id="comentarios" style="display:block"> 
                                        <form action="comenta_Servlet" method="post">
                                            <input type="hidden" name="id_meta" value="<%=metas.get(i).getNumero()%>">
                                            <input type="hidden" name="usuarioLogado" value="<%=pessoa.getUsuario()%>">
                                            <input type="text" name="comentario" id="inputComentario" placeholder="Digite seu comentario..." class="form-control" class="campo" size="310"/>
                                            <br>
                                            <input type="submit" name="acao" value="Enviar" class="btn btn-primary btn-small mx-auto"/>
                                            <input type="hidden" name="acao" value="Enviar"/>
                                        </form>

                                        <%
                                            ArrayList<PessoaComentaMeta> c;
                                            ComentaDao cdao = new ComentaDao();
                                            //num+=i;
                                            if (cdao.temAlgo()) {
                                                c = cdao.listar();

                                                int j = 0;
                                                //if(c!=null){
                                                while ((j <= c.size() - 1)) {
                                                    /*if(c.isEmpty()){
                                    if((c.get(j).getComentario().equals(c.get(j+1).getComentario()))){
                                       j++; 
                                    }else{
                                    System.out.println("entrou no while comentarios");*/
                                                    if (c.get(j).getNumMeta() == metas.get(i).getNumero()) {

                                        %>

                                        <div class="comentarios" id="metas.get(i).getNumero()">
                                            <strong><%=c.get(j).getUsuarioLogado()%></strong>
                                            <p><%=c.get(j).getComentario()%></p>
                                        </div>
                                    </div>

                                </td>
                            </tr>
                            <%                 }
                                        j++;
                                    }
                                    //  }
                                    //}
                                } else {
                                    break;
                                }%>
                            <%}
                                  }%>

                        </table>
                    </div>
                </div>

                <div class="col-xs-6 col-sm-4" id="periodo">
                    <div  >
                        <table class="table table-bordered">
                            <tr>
                                <th style="background-color: buttonface"><center>TOP 10 LIFE GOALS</center></th>
                            </tr>
                            <%
                                SalvaDao sdao = new SalvaDao();
                                ArrayList<PessoaSalvaMeta> metasalvas = sdao.listarTop();

                                for (PessoaSalvaMeta mss : metasalvas) {
                            %>
                            <tr>
                                <td><%=mss.getDescrMeta()%></td>     
                            </tr>
                            <%}%>


                        </table>
                    </div>
                </div>

            </div>



        </div>



        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <span class="cherries"> 10 LIFE GOALS <img alt="icone" src="img/cerejas.png" style="width: 3.0%;
                                                                   padding: 0.8%;margin-left: 0.0%; margin-top: -0.4%"></span>
                    </div>

                    <div class="col-md-4">
                        <span><a href="#">Termos de Uso</a></span>                                    
                    </div>
                </div>
            </div>
        </footer>

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

        <!-- importação javascript-->
        <script src="../js/jquey-3.3.1.min.js"></script>
        <script type="text/javascript" src="../js/funcao.js"></script>

        <script>
            $("#btnSalvar").click(function () {
                alert("Meta Salva!");
            });
        </script>

    </body>
</html>