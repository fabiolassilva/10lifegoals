<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!--<meta name="viewport" content="width=device-width, initial-scale=1">-->
    <title>10 Life Goals - Início</title>
    <link rel="icon" href="../img/cerejas.png">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
       <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
       <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
       <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="../css/telaInicio.css">

    <script type="text/javascript">
        $(function (){
          $('[data-toggle="popover"]').popover();
          })
    </script>
    </head>
    <body>
    <div class="contairner-fluid" ID="CONTENT">
    <nav class="navbar-expand-lg navbar-default  " id="mainNav">
        <div class="container-fluid" id="divNav">
            <div class="navbar-header">
                <a class="navbar-brand js-scroll-trigger" href="">10 Life Goals<img alt="icone" src="../img/cerejas.png"></a>

                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                   <i class="fa fa-bars"></i>
                </button>
            </div>

            <form class="form-inline" id="divPesquisa" method="GET" action="pesquisa" >
              <input class="form-control mr-sm-2" type="text" id="txtPesquisa" name="txtPesquisa" placeholder="Pesquisar" required="true"/>
              <BUTTON id="btnPesquis" class="btn btn-outline-sucess my-2 my-sm-0" href="telaPesquisa.jsp"><img src="../img/lupa.png" id="btnPesquisa" alt="pesquisar"/></BUTTON>
            </form>

            <div class="collapse navbar-collapse" id="navbar" >
                <ul class="nav navbar-nav navbar-right ml-auto">
                    <li class="nav-item ">
                        <a class="nav-link js-scroll-trigger" href="telaInicio.jsp">Início</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="telaPerfil.jsp">Perfil</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="telaMetas.jsp">Metas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="telaAjuda.jsp">Ajuda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="index.jsp">Sair</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

        <div class="row" id="caixas">
            <div class="col-sm-7 col-md-7 com-lg-7">
                <br><p id=msg>Ainda não existem metas cadastradas no site</p>

            </div>
            
            <div id="linha-vert"></div>

            <div class="col-sm-5 col-md-5 col-lg-5 bg-light"id="sugestoesUsuarios" align="center">
                <h3 id="text"><b>#Top Metas de Usuários</b></h3>
                <article id="sugUsuario">
                    <p><b>Não existem metas cadastradas</b></p><br>

                </article><br>
                <article id="sugUsuario">
                    <p><b>Não existem metas cadastradas </b></p><br>

                </article>
                <br>
                <h3 id="textoS"><b>Sugestões 10 Life Goals</b></h3>
                    <article id="sugSite">
                    <p>Plantar mudas de espécies em extinção.</p>
                    <form>
                    <div class="input-group-btn">
                         <button id="btnAdicionaS" tabindex="0" class="btn btn-default" type="button" data-toggle="popover" data-trigger="focus" data-placement="bottom" data-content="Meta Salva!">
                         <span class="glyphicons glyphicons-chevron-right"><img src="../img/mais.png" id="mais"></span>
                        </button>
                    </div>
                    </form>
                </article><br>

                <article id="sugSite">
                    <p>Agradecer a Deus.</p>
                    <form>
                    <div class="input-group-btn">
                         <button id="btnAdicionaS" tabindex="0" class="btn btn-default" type="button" data-toggle="popover" data-trigger="focus" data-placement="bottom" data-content="Meta Salva!">
                         <span class="glyphicons glyphicons-chevron-right"><img src="../img/mais.png" id="mais"></span>
                        </button>
                    </div>
                    </form>
                </article>
                </div>
        </div>
        <!--rodape-->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <span class="hearts">10 Life Goals &#127826; Seu Website 2018</span>
                    </div>

                    <div class="col-md-4">
                        <a  data-toggle="modal" href="#modalTermos">Termos de Uso</a>                                    
                    </div>
                </div>
            </div>
        </footer>
      <!--modal termos-->
      
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