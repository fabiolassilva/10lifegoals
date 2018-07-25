<%-- 
    Document   : index
    Created on : 08/06/2018, 13:29:32
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

        <title>10 Life Goals</title>
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
        <link href="../css/projeto.css" rel="stylesheet">
        

    </head>

    <body id="page-top">

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
                <a class="navbar-brand js-scroll-trigger" href="#page-top">10 Life Goals<img id="icon" alt="icone" src="../img/cerejas.png"></a>
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                   <i class="fa fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#Entrar">Entrar</a><!--services-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#criarconta">Criar Conta</a><!--portfolio-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#sobre">Sobre</a><!--about-->
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" href="#time">Time</a> <!--time-->
                        </li>

                    </ul>
                </div>
            </div>
        </nav>

        <!-- Header -->
        <header class="masthead" >
            <div class="container">
                <div class="intro-text">
                    <div class="intro-lead-in">Incentive e seja incentivado!</div>
                    <div class="intro-heading text-uppercase">Bem Vindo ao 10 Life Goals!</div>
                    <div class="intro-lead-in">Um site para metas de vida que vai mudar a sua vida!</div>
                    <br>
                    <div> <p style="color: #721c24; font-size: 20px">Compartilhe suas metas, interaja com amigos, entre para o Top 10<br>
                             das metas que mais foram salvas! <a  class="js-scroll-trigger" href="#criarconta">Registre-se!</a>
                            <a class="js-scroll-trigger" href="#sobre">Saiba mais sobre nós!</a></p></div>

                </div>
            </div>
        </header>

        <!-- Entrar-->
        <section class="bg-light" id="Entrar"> <!--services-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">10 Life Goals</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-5 mx-auto">
                        <div class="card card-login mx-auto mt-5">
                            <div class="card-header">Entrar</div>
                            <div class="card-body" >
                                <form action="login_cadastro_Servlet" method="post">
                                    <div class="form-group">
                                        <label for="user">Email ou nome de usuário</label>
                                        <input class="form-control" id="user" type="text" aria-describedby="usuHelp" name="usuario" placeholder="Nome de usuário">
                                    </div>
                                    <div class="form-group">
                                        <label for="senha">Senha</label>
                                        <input class="form-control" id="senha" name="senha" type="password" placeholder="Senha">
                                    </div>
                                    <div class="form-group">
                                        <div class="form-check">
                                            <label class="form-check-label">
                                                <input class="form-check-input" type="checkbox"> Lembre-me</label>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary" name ="acao" value="Entrar">
                                    <input type="hidden" name="acao" value="Entrar">
                                </form>
                                <div class="text-center">
                                    <br>
                                    <a data-toggle="modal"  href="#myModal">Esqueceu sua senha?</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <!--Esqueci minha senha -->
        <div class="container" >

                 <div class="modal fade" id="myModal">
                   <div class="modal-dialog">
                     <div class="modal-content">

                       <div class="modal-header">
                         <h4 class="modal-title">Esqueceu sua senha?</h4>
                         <button type="button" class="close" aria-label="Close" data-dismiss="modal">&times;</button>
                       </div>
        
                        <div class="modal-body">
                          <p>Digite seu endereço de e-mail e nós lhe enviaremos instruções sobre como redefinir sua senha.</p>
                          <input type="email" placeholder="Entre com seu email" name="esqueciemail">
                        </div>

                        <div class="modal-footer">
                          <button type="button" class="btn btn-primary mx-auto" >Redefinir Senha</button>
                        </div>
       </div>
    </div>
  </div>
  
</div>

        <!-- Criar Conta -->
        <section  id="criarconta"> <!--portfolio-->
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading ">Crie uma conta no 10 Life Goals!</h2>
                    </div>
                </div>
                <div class="row">
                   
                    <div class="col-md-5 mx-auto">
                        <div class="card card-register mx-auto mt-5">
                            <div class="card-header">Criar Conta</div>
                            <div class="card-body">
                                <form action="login_cadastro_Servlet" method="post">
                                    <div class="form-group">
                                        <label for="exampleInputName">Nome</label>
                                        <input class="form-control" name="nome" id="exampleInputName" type="text" aria-describedby="nameHelp" placeholder="Insira seu nome" size="50">
                                        
                                            
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputUser">Usuário</label>
                                     <input class="form-control" name="usuario" id="exampleInputUser" type="text" aria-describedby="nameHelp" placeholder="Insira um nome de usuário" size="15">                                            
                                    </div>
                                    <div class="form-group">
                                        <label for="exampleInputEmail1">Email</label>
                                        <input class="form-control" name="email" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Insira seu email" size="50">
                                    </div>
                                    <div class="form-group">
                                        <div class="form-row">
                                            <div class="col-md-6">
                                                <label for="exampleInputPassword1">Senha</label>
                                                <input class="form-control" name="senha" id="exampleInputPassword1" type="password" placeholder="Senha" size="20">
                                            </div>
                                            <div class="col-md-6">
                                                <label for="exampleConfirmPassword">Confirme a senha</label>
                                                <input class="form-control" name="confirmesenha" id="exampleConfirmPassword" type="password" placeholder="Confirme a senha" size="20">
                                            </div>
                                        </div>
                                     </div>
                                    <div class="form-group">
                                        <div class="form-check" id="term">
                                            <label class="form-check-label">
                                                <input class="form-check-input" name="termos" type="checkbox"> Concordo com os <a  data-toggle="modal" href="#modalTermos">Termos de Uso</a></label>
                                        </div>
                                    </div>
                                    <input type="submit" class="btn btn-primary mx-auto" value="Criar" required>
                                       <input type="hidden" name="acao" value="Criar">
                                      <script>
                    function validar(){
                        var nome=document.getElementById("nome").value;
                        var email = document.getElementById("email").value;
                        var usuario = document.getElementById("usuario").value;
                        var senha = document.getElementById("senha").value;
                        var confirma = document.getElementById("confirma").value;
                        
                        if(nome==''){
                            window.alert("Preencha todos os campos!");
                            formC.nome.focus();
                        }
                        </script>
                                </form>
                                
                            </div>
                            </div>
                        </div>

                    </div>
              

                    </section>

                    <!-- Sobre -->
                    <section class="bg-light" id="sobre">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 text-center">
                                    <h2 class="section-heading">Sobre</h2>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <ul class="timeline">
                                        <li>
                                            <div class="timeline-image">
                                                <img class="rounded-circle img-fluid" src="../img/about/sobe.png" alt="">
                                            </div>
                                            <div class="timeline-panel">
                                                <div class="timeline-heading">
                                                    <h4>Você</h4>
                                                    <h4 class="subheading">É a nossa maior inspiração</h4>
                                                </div>
                                                <div class="timeline-body">
                                                    <p class="text-muted">Esse site é sobre você, sobre suas metas de vida, aquelas que você não fala para ninguém. Agora você pode compartilhar com quem você desejar e vai poder receber ajuda e dicas de como sair do sonhos e começar a cumprí-las.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="timeline-inverted">
                                            <div class="timeline-image">
                                                <img class="rounded-circle img-fluid" src="../img/about/sobe.png" alt="">
                                            </div>
                                            <div class="timeline-panel">
                                                <div class="timeline-heading">
                                                   
                                                   <h4 class="subheading">Viu nosso coração de frutas lá em cima?</h4>
                                                </div>
                                                <div class="timeline-body">
                                                    <p class="text-muted">Como todo mundo sabe, as frutas são ricas em nutrientes que fazem bem para os seres humanos. E aqui, no 10 Life Goals, representamos nossos usuários como frutas, pois queremos que eles façam bem uns aos outros.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="timeline-image">
                                                <img class="rounded-circle img-fluid" src="../img/about/sobe.png" alt="">
                                            </div>
                                            <div class="timeline-panel">
                                                <div class="timeline-heading">
                                                    <h4 class="subheading">Incentivo e Amor</h4>
                                                </div>
                                                <div class="timeline-body">
                                                    <p class="text-muted">Essas duas palavras são a chave do 10 Life Goals, a interação entre nossos usuários incentivando uns aos outros a cumprirem suas metas particulares e, acima de tudo, compartilhando amor.</p>
                                                </div>
                                            </div>
                                        </li>
                                        
                                        <li class="timeline-inverted">
                                            <div class="timeline-image" id="circulo">
                                                <a class="js-scroll-trigger" href="#criarconta" style="color: white;font-size: 20px" >
                                                    <br>Junte-se
                                                    <br>a 
                                                    <br>nós!</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </section>

                    <!-- Time -->
                    <section  id="time">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12 text-center">
                                    <h2 class="section-heading ">Nosso time maravilhoso</h2>
                                    <h3 class="section-subheading text-muted">Mulheres lindas e inteligentes</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3">
                                    <div class="team-member">
                                        
                                        <h4>Beatriz Guimarães  </h4>
                                        <p class="text-muted">Desenvolvedora</p>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member">
                                        <h4>Bruna Mariana</h4>
                                        <p class="text-muted">Desenvolvedora</p>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member">
                                        <h4>Elouise Lopes</h4>
                                        <p class="text-muted">Desenvolvedora</p>
                                    </div>
                                </div>
                                <div class="col-sm-3">
                                    <div class="team-member">
                                        <h4>Fabíola Silva</h4>
                                        <p class="text-muted">Desenvolvedora</p>
                                    </div>
                                </div>
                                
                            </div>
                            
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
                                            <a  data-toggle="modal" href="#modalTermos">Termos de Uso</a>
                                        
                                </div>
                            </div>
                        </div>
                    </footer>
                    
                    <!-- Modal termos de uso -->
                    <div class="container" >
                    <div class="modal fade" id="modalTermos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
   <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">Termos de Uso</h4>
                <button type="button" class="close" aria-label="Close" data-dismiss="modal">&times;
</button>
            </div>
            <div class="modal-body">
              <h5>Requerimentos para uso do serviço</h5>
                          <p style="text-align: justify">Nosso serviço é oferecido para pessoas capazes de firmar um acordo conosco. O Usuário deve conhecer e seguir as regras deste site, bem como estar de acordo com a jurisdição a que pertence e as leis do seu país.
</p>
                          <h5>Conteúdo nos Serviços
</h5>
                          <p style="text-align: justify">Você é responsável por seu uso dos serviços e por qualquer conteúdo fornecido, incluindo a conformidade com leis, regras e regulamentos aplicáveis. Você só deve fornecer conteúdo com o qual esteja confortável em compartilhar com outras pessoas.
Qualquer uso ou confiança em qualquer conteúdo ou materiais publicados pelos Serviços ou obtidos por você pelos Serviços é de sua inteira responsabilidade. Não aprovamos, apoiamos, declaramos nem garantimos a integridade, veracidade, exatidão ou confiabilidade de qualquer Conteúdo ou comunicado publicado pelos Serviços, tampouco endossamos opiniões expressas por eles. Você compreende que, ao utilizar os Serviços, pode estar exposto a Conteúdo ofensivo, prejudicial, impreciso, inadequado ou, em alguns casos, a publicações identificadas de modo indevido ou fraudulentas. Todo o conteúdo é de responsabilidade exclusiva da pessoa que o criar. Não podemos monitorar ou controlar o Conteúdo postado pelos serviços, e não podemos nos responsabilizar por tal conteúdo.
</p>
                          <h5>Utilização dos Serviços
</h5>
                          <p style="text-align: justify">Revise as regras do 10 Life Goals, que fazem parte do acordo do usuário e descrevem o que é proibido nos Serviços. Você pode utilizar os serviços somente em conformidade com estes termos e todas as leis, regras e regulamentos aplicáveis.
Nossos serviços evoluem constantemente. Sendo assim, os serviços podem ser alterados de tempos em tempos, a nosso exclusivo critério. Podemos interromper (permanente ou temporariamente) o fornecimento dos serviços ou quaisquer recursos nos serviços para você ou usuários em geral. Também podemos manter o direito de criar limites de uso e armazenamento, a nosso exclusivo critério e a qualquer momento. Nós também podemos remover ou recusar a distribuição de qualquer conteúdo nos serviços, suspender ou encerrar contas de usuários e recuperar nomes de usuários sem responsabilidade perante você.
Em consideração ao 10 Life Goals por conceder a você acesso e uso dos serviços, você concorda que o 10 Life Goals e seus provedores de terceiros e parceiros podem colocar anúncios nos Serviços ou em conexão com a exibição do conteúdo ou de informações dos serviços, enviados por você ou por outras pessoas. Você também concorda em não fazer uso indevido de nossos serviços, por exemplo, interferindo ou acessando-os por meio de um método que não seja a interface e as instruções fornecidas pelo 10 Life Goals. Você não pode realizar nenhuma das seguintes ações ao acessar ou utilizar os Serviços: (I) acessar, adulterar ou utilizar áreas não públicas dos serviços, os sistemas de computadores do 10 Life Goals ou os sistemas de entrega técnica dos fornecedores do 10 Life Goals; (II) sondar, examinar ou testar as vulnerabilidades de qualquer sistema ou rede, ou violar ou neutralizar qualquer medida de segurança ou autenticação; (III) acessar ou pesquisar, ou tentar acessar ou pesquisar os serviços por quaisquer meios (automatizados ou de qualquer outra maneira) de outra forma que não por meio das interfaces publicadas e atualizadas disponibilizadas pelo 10 Life Goals (e sujeito aos respectivos termos e condições), exceto quando você tenha sido especificamente autorizado a realizar esses atos por meio de um acordo separado com o 10 Life Goals (OBS.: o crawling ou recurso a indexadores automáticos nos Serviços é admissível desde que efetuado de acordo com os termos e condições constantes do arquivo robots.txt; não obstante, é expressamente proibido o scraping dos Serviços sem o consentimento prévio do 10 Life Goals); (IV) forjar o cabeçalho de qualquer pacote TCP/IP ou qualquer parte da informação constante do cabeçalho de qualquer e-mail ou publicação, assim como utilizar os serviços de qualquer forma para enviar informação identificadora de origem alterada, enganosa ou falsa; ou (V) interferir ou prejudicar, (ou tentar assim o fazer), o acesso de qualquer usuário, prestador de serviços de hosting (armazenagem principal ou em servidor) ou de rede, incluindo, sem limitação, por meio de atos como o envio de vírus, overloading (sobrecarga), flooding, envio de spam (comunicações não solicitadas) e-mail-bombing direcionados aos Serviços, ou por meio do uso de scripts para a criação de Conteúdo de maneira que interfira com os Serviços ou crie uma carga excessiva neles. Também nos reservamos o direito de acessar, ler, preservar e divulgar quaisquer informações que acreditarmos ser razoavelmente necessárias para (I) satisfazer solicitação governamental de qualquer lei, regulamento ou processo jurídico aplicável, (II) cumprir os Termos, incluindo a investigação de possíveis violações deste Acordo, (III) detectar, prevenir ou, de outra forma lidar com fraude, segurança ou problemas técnicos, (IV) responder solicitações de suporte do usuário, ou (V) proteger os direitos, propriedade ou segurança do 10 Life Goals, de seus usuários e do público. O 10 Life Goals não divulga informações pessoais a terceiros, exceto de acordo com nossa Política de Privacidade.

</p>
                          <h5>Quem pode utilizar</h5>
                          <p style="text-align: justify">Você pode utilizar os Serviços somente se concordar em celebrar um contrato vinculante com o 10 Life Goals e não for uma pessoa impedida de receber serviços sob as leis da jurisdição aplicável. Se estiver aceitando estes termos e utilizando os serviços em nome de uma empresa, organização, governo ou outra entidade legal, você declara e garante que está autorizado a realizar tal ação.
</p>
                          <h5>Seus Direitos</h5>
                          <p style="text-align: justify">Você manterá seus direitos sobre qualquer conteúdo que enviar, publicar ou exibir nos serviços ou por meio deles. O que for seu será seu; você é o proprietário do seu conteúdo.
Ao enviar, publicar ou exibir conteúdo nos serviços ou por meio deles, você nos outorga uma licença mundial gratuita, não exclusiva (com direito a sublicenciar) para utilizar, copiar, reproduzir, processar, adaptar, modificar, publicar, transmitir, exibir e distribuir esse conteúdo em qualquer e todos os tipos de mídia ou métodos de distribuição (já disponíveis ou que venham a ser desenvolvidos). Esta licença nos autoriza a tornar seu conteúdo disponível para o restante do mundo e permite que outros usuários façam o mesmo. Você concorda que esta licença outorga ao 10 Life Goals o direito de fornecer, promover e melhorar os Serviços, além de tornar o conteúdo enviado para ou por meio dos Serviços disponível a outras empresas, organizações ou pessoas que são parceiras do 10 Life Goals para fins de distribuição, transmissão, divulgação ou publicação dele em outros tipos de mídia e serviços, sujeitando-se aos nossos termos e condições de utilização de conteúdo. Tais usos adicionais por parte do 10 Life Goals ou de outras empresas, organizações ou indivíduos parceiros do 10 Life Goals podem ocorrer sem que lhe seja devida qualquer remuneração pelo conteúdo que você enviar, publicar, transmitir ou, de outra maneira, disponibilizar por meio dos serviços.
O 10 Life Goals tem um conjunto de regras em constante evolução relacionadas à forma como os parceiros do ecossistema podem interagir com o seu conteúdo nos Serviços do 10 Life Goals. Tais regras existem para possibilitar a existência de um ecossistema aberto, levando em consideração os seus direitos. Você entende que podemos modificar ou adaptar seu conteúdo, uma vez que ele tenha sido distribuído, publicado ou transmitido pelo 10 Life Goals ou nossos parceiros e/ou fazer alterações em seu conteúdo para adaptá-lo a diferentes tipos de mídia. Você declara e garante que possui todos os direitos, poderes e autorizações necessários para outorgar os direitos aqui citados sobre qualquer conteúdo enviado por você.
</p>
                          <h5>Sua conta</h5>
                          <p style="text-align: justify">Você pode precisar criar uma conta para utilizar alguns de nossos serviços. Você é responsável por proteger sua conta, portanto, use uma senha forte e limite seu uso para esta conta. Nós não podemos ser e não seremos responsáveis por qualquer perda ou dano resultante do seu não cumprimento com o descrito acima.
Você pode controlar a maioria das comunicações a partir dos serviços. Talvez o 10 Life Goals precise enviar a você certas comunicações, como anúncios de serviços e mensagens administrativas. Essas comunicações são consideradas parte dos Serviços e da sua conta, e você não conseguirá cancelar o recebimento delas.
</p>
                          <h5>Sua licença para utilizar os Serviços
</h5>
                          <p style="text-align: justify">O 10 Life Goals oferece a você uma licença pessoal, mundial, gratuita, não atribuível e não exclusiva, para utilizar o software fornecido a você como parte dos Serviços. Essa licença possui a finalidade exclusiva de permitir que você utilize e aproveite o benefício dos Serviços, conforme descrito pelo 10 Life Goals, na maneira permitida por estes Termos.
Nada nos Termos outorga a você o direito de utilizar o nome do 10 Life Goals ou quaisquer marcas registradas, logotipos, nomes de domínio e outras características distintivas de sua marca. Todos os direitos, títulos e interesses sobre e relacionados aos Serviços (exceto aqueles relacionados ao Conteúdo fornecido pelos usuários) são e continuarão sendo propriedade exclusiva do 10 Life Goals e de seus licenciadores. Quaisquer feedback, comentários ou sugestões fornecidos com relação ao 10 Life Goals ou os Serviços são totalmente voluntários e poderão ser utilizados como feedback, comentários ou sugestões de acordo com nossa conveniência e sem que haja qualquer obrigação perante você.
</p>
                          <h5>Termos de Serviço</h5>
                          <p style="text-align: justify">Os termos de serviço podem ser atualizados a qualquer momento e sem qualquer aviso prévio. Fique atento.</p>
                          
            </div>
            <div class="modal-footer">
                Atenciosamente, 10 Life Goals.
            </div>
        </div>
    </div>
</div>
                 
                    </div>

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
