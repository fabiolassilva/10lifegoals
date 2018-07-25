<%-- 
    Document   : telaPerfil
    Created on : 08/06/2018, 13:35:46
    Author     : ELOUISE LOPES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Pessoa"%>
<%@page import="model.Meta"%>
<%@page import="java.util.GregorianCalendar"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals - Cadastre suas Metas</title>
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


    </head>

    

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                    </ul>
                </div>
            </div>
        </nav> 
        
        <div class="container" id = "corpo">
            <h2>Metas</h2>
            <p>Registre suas metas aqui!</p>
            
            <form action="metas_Servlet" method="post" >
                <div class="row">
                    <div class="col-xs-6 col-sm-3">
                        <h4>Número</h4>
                        <div id="numeracao">
                            <label for="meta1">1</label><br><br>
                            <label for="meta2">2</label><br><br>
                            <label for="meta3">3</label><br><br><br>
                            <label for="meta4">4</label><br><br>
                            <label for="meta5">5</label><br><br>
                            <label for="meta6">6</label><br><br>
                            <label for="meta7">7</label><br><br>
                            <label for="meta8">8</label><br><br>
                            <label for="meta9">9</label><br><br>
                            <label for="meta10">10</label>
                        </div>
                    </div>                    
                    
                    <div class="col-xs-6 col-sm-3">
                        <h4>Descrição</h4>
                        <div class="form-group">
                            <input type="text" class="form-control" name="meta1" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta2" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta3" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta4" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta5" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta6" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta7" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta8" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta9" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                            <input type="text" class="form-control" name="meta10" id="meta" maxlength="50" onchange="validar()" onclick="data()"><br>
                        </div>
                    </div>
                    
                    <div class="col-xs-6 col-sm-3" id="periodo">
                        <h4>Período</h4>
                        <div id="doPeriodo">
                            <div class="form-group">
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p1" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p2" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p3" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p4" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p5" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p6" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p7" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p8" id="p">
                                    <option value="0" selected>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p9" id="p">
                                    <option value="0" selected>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select><br><br><br>

                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="p10" id="p">
                                    <option value="0" selected>Selecione</option>
                                    <option value="7">1 Semana</option>
                                    <option value="10">10 dias</option>
                                    <option value="30">1 mês</option>
                                    <option value="60">2 meses</option>
                                    <option value="90">3 meses</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="col-xs-6 col-md-3">
                        <h4>Publicar</h4>
                        <div class="form-group">
                            <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub1" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub2" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub3" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub4" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub5" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub6" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub7" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub8" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub9" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                                <select class="selectpicker" data-size="5" data-live-search="true" data-width="100%" required name="pub10" id="p">
                                    <option value="0" selected disabled>Selecione</option>
                                    <option value="s">Sim</option>
                                    <option value="n">Não</option>
                                </select><br><br><br>
                              
                        </div>
                            <br><br>
                            <input type="submit" class="btn btn-primary mx-auto" value="Continuar"><br><br><br>
                            <input type="hidden" name="acao" value="Salvar">
                             
                        
                    </div>
                </div>
            </form>
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

        <script>
            function validarCaracteres(){
                meta = document.getElementById("meta");
                if(meta.length>50)
                    alert("A biografia so pode conter 50 caractes!");
            }
            
            function data(){
                        <% 
                            GregorianCalendar calendar = new GregorianCalendar();
                            Meta m = new Meta();
                            
                            m.setData(calendar.get(GregorianCalendar.DAY_OF_MONTH));
                            %>
            }
            /*function camposBrancos(){
                var meta = document.getElementById("meta").value;
                var periodo = document.getElementById("periodo").value;
                
                if(meta === '')
                    document.alert("Preencha todos os campos.");
                window.open('telaInicio.jsp');
            }*/
        </script>
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
</html>