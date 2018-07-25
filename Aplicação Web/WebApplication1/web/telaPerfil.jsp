<%-- 
    Document   : telaPerfil
    Created on : 08/06/2018, 13:35:46
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

        <title>10 Life Goals - Perfil</title>
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
        <link href="../css/telaPerfil.css" rel="stylesheet">

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
        
        <div class='container' id='oioi'>
            <div class="row">
            <section  id="perfil" class="col-sm-3">
                <div id="foto">
                    <img id="icone-user" alt="foto-user" src="../img/Koala.jpg">
                </div>

                <div id="username">
                    <label>@kowala</label>
                </div>
                
                <div class="container">
                  <!-- Trigger the modal with a button -->
                  <button type="button" class="btn btn-light" data-toggle="modal" data-target="#myModal" id="editar">Editar perfil</button>

                  <!-- Modal -->
                  <div class="modal fade"class="modal hide fade in" data-keyboard="false" data-backdrop="static" id="myModal" role="dialog">
                    <div class="modal-dialog">

                      <!-- Modal content-->
                      <div class="modal-content">
                        <div class="modal-header">
                          <h3 class="modal-title">Editar</h3>
                          <button type="button" class="close" onclick="alertar()">&times;</button>
                        </div>
                        <div class="modal-body">
                            <h4>Sobre mim</h4>
                          <form action="/action_page.php">
                              <div class="form-group">
                                <label for="nomeUsuario">Nome</label>
                                <input type="text" class="form-control" id="nome">
                              </div>
                              <div class="form-group">
                                <label for="nomeUsuario">Foto</label><br>
                                <input type="file" class="btn btn-default" id="files" name="files[]" multiple />
                                <output id="list"></output>
                              </div>
                              <div class="form-group">
                                <label for="nomeUsuario">Nome de usuário</label>
                                <input type="username" class="form-control" name="nomeUsuario" disabled id="nomeUsuario">
                              </div>
                              <div class="form-group">
                                <label for="dataNasc">Aniversário</label>
                                <input type="date" class="form-control" name="bday" id="dataNasc">
                              </div>
                              <div class="form-group">
                                <label for="bio">Biografia</label>
                                <input type="textarea" class="form-control" id="bio" maxlenght="50" placeholder="Fale um pouco sobre você...">
                              </div>
                              <button type="button" class="btn btn-primary" onclick="validarSobreMim()">Salvar</button>
                            </form>
                        </div>
                        <div class="modal-body">
                            <h4>Dados pessoais</h4>
                          <form action="/action_page.php">
                              <div class="form-group">
                                <label for="emailUsuario">Email</label>
                                <input type="email" class="form-control" id="emailUsuario" placeholder="endereco@exemplo.com">
                              </div>
                              <div class="form-group">
                                <label for="senha">Senha</label>
                                <input type="password" class="form-control" id="senha">
                              </div>
                              <button type="submit" class="btn btn-primary">Salvar</button>
                            </form>
                        </div>
                        <div class="modal-body">
                            <h4>Alterar senha</h4>
                          <form action="/action_page.php">
                              <div class="form-group">
                                <label for="senha">Senha Atual</label>
                                <input type="password" class="form-control" id="senhaAtual">
                              </div>
                              <div class="form-group">
                                <label for="senha">Nova Senha</label>
                                <input type="password" class="form-control" id="senhaNova">
                              </div>
                              <div class="form-group">
                                <label for="senha">Confirmar Nova Senha</label>
                                <input type="password" class="form-control" id="senhaNova1">
                              </div>
                              <button type="button" class="btn btn-primary" onclick="validarSenha()">Salvar</button>
                            </form>
                        </div>
                        <div class="modal-footer">
                          <button type="button" class="btn btn-default"  onclick="alertar()">Fechar</button>
                        </div>
                      </div>

                    </div>
                  </div>

                </div>

                
                <div class="vertical-menu">
                    <li><a data-toggle="collapse" href="#emailUsuario" aria-expanded="false" aria-controls="emailUsuario"><i class="fa fa-vcard-o"></i>Dados Pessoais</a></li>
                    <li><a data-toggle="collapse" href="#semamigos" aria-expanded="false" aria-controls="semamigos"><i class="fa fa-users"></i>Amigos</a></li>
                    <li><a data-toggle="collapse" href="#bio" aria-expanded="false" aria-controls="bio"><i class="fa fa-book"></i>Biografia</a></li>
                    <li><a data-toggle="collapse" href="#aniv" aria-expanded="false" aria-controls="aniv"><i class="fa fa-birthday-cake"></i>Aniversário</a></li>
                </div>
                <div id="lista">
                    <h6 class="collapse" id="emailUsuario">@koalasmith@example.com</h6>
                    <h6 class="collapse" id="semamigos">Você ainda não possui amigos.</h6>
                    <h6 class="collapse" id="bio">I'm a fruit citrus</h6>
                    <h6 class="collapse" id="aniv">30/09</h6>
                </div>

             </section>
         
             <div class="col-sm-9">
                     <h2><b>Koala Smith</b></h2><br><br>
                     
                    <div style="color: grey">
                     Não há registro de metas.
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

                   <!-- Bootstrap core JavaScript -->
        <script src="../vendor/jquery/jquery.min.js"></script>
        <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

                    <!-- Plugin JavaScript -->
        <script src="../vendor/jquery-easing/jquery.easing.min.js"></script>

                    <!-- Contact form JavaScript -->
        <script src="../js/jqBootstrapValidation.js"></script>
        <script src="js/contact_me.js"></script>

                    <!-- Custom scripts for this template -->
        <script src="../js/agency.min.js"></script>
        
        <script>
            function alertar(){
                var b = window.confirm("Se você fechar, todas as alterações serão perdidas. \nDeseja continuar?");
                if(b){
                    $("#myModal").modal("hide");
                    'form-grou'
                }
            }
                
            function validarSobreMim(){
                nome = document.getElementById("nome").value;
                nomeUsu = document.getElementById("nomeUsuario").value;
                aniv = document.getElementById("dataNasc").value;
                bio = document.getElementById("bio").value;
                
                if( nome==''&& nomeUsu=='' && aniv=='' && bio==''){
                    alerta = window.confirm("Nenhuma alteração foi feita. \nDeseja voltar ao perfil?");
                    if(alerta){
                        $("#myModal").modal("hide");
                    }
                }else{
                    alerta = window.confirm("As alterações foram salvas! \nDeseja voltar ao perfil?");
                    if(alerta){
                        $("#myModal").modal("hide");
                    }
                }
            }
            
            function validarSenha(){
                senhaAtual = document.getElementById("emailUsuario").value;
                senhaNova = document.getElementById("senhaNova").value;
                senhaNova1 = document.getElementById("senhaNova1").value;
                
                if(senhaAtual=='' && senhaNova=='' && senhaNova1==''){
                    alerta = window.confirm("Nenhuma alteração foi feita. \nDeseja voltar ao perfil?");
                    if(alerta){
                            $("#myModal").modal("hide");
                    }
                }else if(senhaNova!=senhaNova1){
                    window.alert("As senhas não correspondem.")
                }
            }
            
        </script>
        <script>
          function handleFileSelect(evt) {
            var files = evt.target.files; // FileList object

            // files is a FileList of File objects. List some properties.
            var output = [];
            for (var i = 0, f; f = files[i]; i++) {
              output.push('<li><strong>', escape(f.name), '</strong> (', f.type || 'n/a', ') - ',
                          f.size, ' bytes, last modified: ',
                          f.lastModifiedDate.toLocaleDateString(), '</li>');
            }
            document.getElementById('list').innerHTML = '<ul>' + output.join('') + '</ul>';
          }

          document.getElementById('files').addEventListener('change', handleFileSelect, false);
        </script>
    </body>
</html>
