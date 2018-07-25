<%-- 
    Document   : telaMetas
    Created on : 08/06/2018, 13:34:37
    Author     : BEATRZ GUIMARAES
--%>

<%@page import="model.PessoaSalvaMeta"%>
<%@page import="dao.SalvaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.MetaDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Meta"%>
<%@page import="model.Pessoa"%>
<%@page import="mail.JavaMailApp"%>
<%@page import="java.util.GregorianCalendar"%>
        
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals - Metas</title>
        <link rel="icon" href="img/cerejas.png">


        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../css/telaMetas.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">

                    <i class="fa fa-bars"></i>
                </button>

                <form class="form-inline" id="divPesquisa" action="telaPesquisa.jsp">
                    <input class="form-control mr-sm-2" type="text" id="txtPesquisa" name="txtPesquisa" placeholder="Pesquisar"/>
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
        <div class="container" id="corpo">

            <h2>Metas</h2>
            <p>Área reservadas às suas metas.&nbsp &nbsp &nbsp <input type="submit" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal" value="Nova Meta"> </p>
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active"  id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Metas Atuais</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link"  id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Metas Concluídas</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false" >Metas Salvas</a>
                </li>
                
            </ul>
           
            <div  class="tab-content" id="myTabContent">

                <div  class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab" action="metas_Servlet" method="post">
                    <div class="row">
                        <div class="col-xs-6 col-md-3">
                            <table class="table ">
                                <tr>

                                    <th>Número</th>

                                </tr>
                                <tr>
                                    <% for (int i = 1; i <= 10; i++) {%>
                                    <td>
                                        <%=i%>
                                    </td>
                                </tr>
                                <% } %>


                            </table>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <table class="table">
                                <tr>

                                    <th>Descrição</th>
                                </tr>
                                <%
                                    Pessoa pessoa = (Pessoa) request.getSession().getAttribute("usuario");
                                    MetaDao mdao = new MetaDao();
                                    ArrayList<Meta> metas = mdao.lista(pessoa.getUsuario());

                                    for (Meta m : metas) {
                                        if(m.getSituacao() == 'n'){
                                %>
                                <tr>
                                    <td><%=m.getDescricao()%></td>     
                                </tr>
                                <%}}%>


                            </table>
                        </div>
                        <div class="col-xs-6 col-md-3">
                            <table class="table">
                                <tr>

                                    <th>Período</th>
                                </tr>
                                 <%
                            GregorianCalendar calendar = new GregorianCalendar();
                            int hj = calendar.get(GregorianCalendar.DAY_OF_MONTH);
                            JavaMailApp mail = new JavaMailApp();
                            for(Meta m:metas){
                               if(m.getSituacao() == 'n'){

                            %>
                            <tr>
                                <td><%=m.getPeriodo()%></td>     
                            </tr>
                            <%  int total = calendar.getActualMaximum(GregorianCalendar.DAY_OF_MONTH);
                                int dia = m.getData() + m.getPeriodo();
                                
                                String nomeP = pessoa.getUsuario();
                                String emailP = pessoa.getEmail();
                                String senhaP = pessoa.getSenha();
                
                                String msgM;
                                msgM = "<H4>Olá sr.(a) " + nomeP + "</H4>"
                                + "<BR>"
                                + "<P> O período de sua meta "+ m.getDescricao()+" está pela metade. Não desista, divida com alguém e procure ajuda para cumpri=la. Boa sorte!</P>"
                                + "<BR>"    
                                + "<P> Atenciosamente, </P>"
                                + "<BR>"
                                + "<P> Equipe 10LifeGoals. </P>"
                                + "<BR> \n";

                                String mailServer = "smtp.googlemail.com";
                                String assunto = "Equipe 10LifeGoals";
                                        
                                        /*------------------msg de final de meta-----------------------------*/
                                String msgF;
                                msgF = "<H4>Olá sr.(a) " + nomeP + "</H4>"
                                + "<BR>"
                                + "<P> O período de sua meta "+ m.getDescricao()+" terminou. Não desista, divida com alguém e procure ajuda para cumpri-la, não deixe de conclui-la. Boa sorte!</P>"
                                + "<BR>"    
                                + "<P> Atenciosamente, </P>"
                                + "<BR>"
                                + "<P> Equipe 10LifeGoals. </P>"
                                + "<BR> \n";

                                        
                                if(dia > total)
                                    dia = dia - total;
                                if(m.getPeriodo()==7){
                                    if(hj == (dia-3)){
                                        System.out.println("etrou no if de email");
                                        mail.enviarMail(mailServer, emailP, assunto, msgM, "10lifegoals@gmail.com");
                                    }
                                    if((hj==dia) && m.getSituacao() == 'n'){
                                        System.out.println("etrou no if de email de expirou");
                                        mail.enviarMail(mailServer, emailP, assunto, msgF, "10lifegoals@gmail.com");
                                    }
                                }
                                
                                if(m.getPeriodo()==10){
                                    if(hj == (dia/2)){
                                        System.out.println("etrou no if de email");
                                        mail.enviarMail(mailServer, emailP, assunto, msgM, "10lifegoals@gmail.com");
                                    }
                                    if((hj==dia) && m.getSituacao() == 'n'){
                                        System.out.println("etrou no if de email de expirou");
                                        mail.enviarMail(mailServer, emailP, assunto, msgF, "10lifegoals@gmail.com");
                                    }
                                }
                                
                                if(m.getPeriodo()==30){
                                    if(hj == (dia/2)){
                                        System.out.println("etrou no if de email");
                                        mail.enviarMail(mailServer, emailP, assunto, msgM, "10lifegoals@gmail.com");
                                    }
                                    if((hj==dia) && m.getSituacao() == 'n'){
                                        System.out.println("etrou no if de email de expirou");
                                        mail.enviarMail(mailServer, emailP, assunto, msgF, "10lifegoals@gmail.com");
                                    }
                                }
                                
                                if(m.getPeriodo()==60){
                                    if(hj == (dia/2)){
                                        System.out.println("etrou no if de email");
                                        mail.enviarMail(mailServer, emailP, assunto, msgM, "10lifegoals@gmail.com");
                                    }
                                    if((hj==dia) && m.getSituacao() == 'n'){
                                        System.out.println("etrou no if de email de expirou");
                                        mail.enviarMail(mailServer, emailP, assunto, msgF, "10lifegoals@gmail.com");
                                    }
                                }
                                
                                if(m.getPeriodo()==90){
                                    if(hj == (dia/2)){
                                        System.out.println("etrou no if de email");
                                        mail.enviarMail(mailServer, emailP, assunto, msgM, "10lifegoals@gmail.com");
                                    }
                                    if((hj==dia) && m.getSituacao() == 'n'){
                                        System.out.println("etrou no if de email de expirou");
                                        mail.enviarMail(mailServer, emailP, assunto, msgF, "10lifegoals@gmail.com");
                                    }
                                }
                               
                             }}%>


                            </table>
                        </div>

                        <div class="col-xs-6 col-md-3">
                            <table class="table ">
                                <tr>

                                    <th>Situação</th>

                                </tr>
                                 <tr>
                                    <% for (Meta m : metas) {
                                       if(m.getSituacao() == 'n'){

%>
                                    <td>
                                        <form action="cumprir_meta_servlet" method="post">    
                                            <input type="hidden" value="<%= m.getNumero()%>" name="numeroM">
                                            <input type="submit" class="btn btn-primary btn-sm" name ="acao"  value="Concluida" id="concluida">
                                            <input type="hidden" name="acao" value="Concluida">
                                        </form>
                                            
                                            

                                    </td>
                                </tr>
                                <% }}%>


                            </table>
                        </div>
                    </div>

                </div>

                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <table class="table">
                        <%
                            Pessoa pMC = (Pessoa) request.getSession().getAttribute("usuario");
                            MetaDao MCdao = new MetaDao();
                            ArrayList<Meta> concluidas = MCdao.listaConclui(pMC.getUsuario());

                            for (Meta m : concluidas) {
                                if(m.getSituacao() == 's'){
                        %>
                        <tr>
                            <td>
                                <div style="color: #10707f">
                                        
                                    <p><%=m.getDescricao()%></p> 
                                </div>
                            </td>
                        </tr>
                        <%}}%>


                    </table>

                </div>


                <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                    <table class="table">
                        <%
                            Pessoa p = (Pessoa) request.getSession().getAttribute("usuario");
                            SalvaDao sdao = new SalvaDao();
                            ArrayList<PessoaSalvaMeta> metasalvas = sdao.listar(p.getUsuario());

                            for (PessoaSalvaMeta ms : metasalvas) {
                        %>
                        <tr>
                            <td>
                                <div style="color: #10707f">
                                        
                            <h6><%=ms.getUsuarioCriador()%></h6>
                            <p><%=ms.getDescrMeta()%></p> 
                                </div>
                            </td>
                        </tr>
                        <%}%>


                    </table>

                </div>     

            </div>

            <!--  -->
            
            <div class="modal fade" id="myModal" role="dialog">
                <div class="modal-dialog">

                    <!-- Modal content-->
                    <div class="modal-content">
                            <form action="cumprir_meta_servlet" method="post">
                        <div class="modal-header">
                            <h4 class="modal-title">Cadastre uma nova meta!</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>

                        </div>
                        <div class="modal-body">
                                <div class="form-group">
                                    <label for="nomeUsuario">Digite sua nova meta</label>
                                    <input type="text" class="form-control" id="nome" name="descr">
                                </div>
                                <div class="form-group">
                                    <label for="nomeUsuario">Qual será o período?</label>
                                    <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="per" >
                                        <option value="0" selected disabled>Selecione</option>
                                        <option value="7">1 Semana</option>
                                        <option value="10">10 dias</option>
                                        <option value="30">1 mês</option>
                                        <option value="60">2 meses</option>
                                        <option value="90">3 meses</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="nomeUsuario">Deseja publicar?</label>
                                    <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub" >
                                        <option value="0" selected disabled>Selecione</option>
                                        <option value="s">Sim</option>
                                        <option value="n">Não</option>
                                    </select>
                                </div>
                           
                        </div>
                        <div class="modal-footer">
                            <input type="submit" class="btn btn-primary" name="acao" value="Salvar">
                            <input type="hidden" name="acao" value="Salvar">
                        </div>
                            </form>
                    </div>
                </div>
                
            </div>
            
               <!-- fim modal -->






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
            
             <script>
            $("#concluida").click(function () {
                alert("Meta Concluída. Parabéns!");
            });
        </script>
    </body>
</html>