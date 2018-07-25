<%-- 
    Document   : telaMetas
    Created on : 08/06/2018, 13:34:37
    Author     : BEATRIZ GUIMARÃES
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>10 Life Goals - Metas</title>
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
        <link href="../css/telaMetas.css" rel="stylesheet">

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top" style="maxwidth: 100%">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                
                    <i class="fa fa-bars"></i>
                </button>
                
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <form class="navbar-form navbar-right" action="/action_page.php">
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Pesquisar">
                          <div class="input-group-btn">
                            <button class="btn btn-default" type="submit"><img src="../img/lupa.png" width="18" heigth="18"></button>
                          </div>
                        </div>
                    </form>
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
        
        <div class="container" id = "corpo" >
            <div class="row">
                    <div class="col-md-12">
                        <h2>Metas</h2>
                        <p>Cadastre suas metas aqui!<br>Não se preocupe. Você poderá alterá-las, mais tarde.</p>
                        <form action="/action_page.php" id="formulario">
                            <div class="form-group">
                                <label for="meta">1.</label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">2.</label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">3. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">4. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">5. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">6. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">7. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">8. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">9. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                                <label for="meta">10. </label>
                                <input type="text" class="form-control" id="meta" maxlength="50">
                            </div>
                        </form>
                        <div id="opcoes">
                            <button type="submit" class="btn btn-primary" onclick="verificar()">Salvar</button>
                        </div>
                    </div>
            </div>
        </div>
        
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <span class="cherries"> 10 LIFE GOALS <img alt="icone" src="../img/cerejas.png" style="width: 3.0%;
               padding: 0.8%;margin-left: 0.0%; margin-top: -0.4%"></span>
                    </div>

                    <div class="col-md-4">
                        <span><a href="#">Termos de Uso</a></span>                                    
                    </div>
                </div>
            </div>
        </footer>
        
        <script>
            function verificar(){
                var meta = document.getElementById("meta").value;
                
                if(meta == ''){
                    window.alert("Você não pode deixar metas em branco.");
                }else{
                    window.open('telaInicio.html');
                    window.close(this);
                }
            }
        </script>
    </body>
</html>

