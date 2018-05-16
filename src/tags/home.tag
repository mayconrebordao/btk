<home>
    <style>
       img{
            max-width: 100%;
        }
        #banner{
            padding-top: 10%;
            color: #fff;
            background-image: url(imgs/banner1.png);
            widows: 100%;
            height: 500px;
        }
        #home-register-email{
            width: 90%;
        }
        #home-register-email .btn{
            border-top-right-radius: 4px;
            border-bottom-right-radius: 4px;
        }
        #content{
            padding-top: 60px;
            padding-bottom: 60px;
        }
        #components{
            background: #f7f7f7;
        }
        #components img{
            width: 80px;
        }
        #logobtm{
          width: 120px;
        }
        .text-center{
            text-align: center;
        }
        .content-padding{
            padding-top: 50px;
            padding-bottom: 50px;
        }
        .free-trial-home{
            background: #55a1e8;
            color: #fff;
        }
        .navbar ul li a{
            cursor: pointer;
        }
    </style>

    <div>
        <entrar></entrar>
        <cadastro></cadastro>
        <recuperarSenha></recuperarSenha>
        <header>
          <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
              <a class="navbar-brand" href="#"><img id="logobtm" src="../imgs/logo.png"></a>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
              </button>
              
              <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav ml-auto">
                      <li class="nav-item">
                          <a class="nav-link" href="#components">Funcionalidades</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" data-toggle="modal" data-target="#entrar">Entrar</a>
                      </li>
                      <li class="nav-item">
                          <a class="nav-link" data-toggle="modal" data-target="#cadastro">Cadastre-se</a>
                      </li>
                  </ul>           
                </div>
            </div>
          </nav>
      </header>
      <section id="banner">
          <div class="container text-center">
              <div class="row">
                  <div class="col-md-12">
                      <h1>Gerenciador de tarefas online para você ou sua empresa.</h1>
                      <p>BTM é um gerenciador de tarefas e projetos online simples e intuitivo que aumenta a productividade da sua equipe!</p>
                      <div class="col-md-6 offset-md-3">
                          <div class="input-group mb-2" id="home-register-email">
                              <input type="text" class="form-control" placeholder="Informe seu e-mail">
                              <div class="input-group-prepend">
                                  <input type="submit" class="btn btn-success" value="Cadastre-se">
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>
      </section>
      <section id="content">
          <div class="container-fluid content-padding">
              <div class="row">
                  <div class="col-md-6 offset-md-1">
                      <img src="../imgs/imgFoco.png" alt="">
                  </div>
                  <div class="col-md-4">
                      <h1>Coloque suas equipes trabalhando em sincronia</h1>
                      <p>Com conteúdo, conversas e processos estruturados e agrupados em uma mesma ferramenta, o Podio fornece o foco e a clareza de que as pessoas precisam para trabalhar da melhor forma possível.</p>
                      <p><a href="" class="btn btn-info">Saiba mais</a></p>
                  </div>
              </div>
          </div>
          <div class="container-fluid content-padding" id="components">
              <div class="container">
                  <div class="row padding-row">
                      <div class="col-xs-12 text-center">
                          <h1>Os componentes de que você precisa, juntos em uma só ferramenta</h2>
                      </div>
                  </div><br>
                  <div class="row text-center">
                      <div class="col-sm-4">
                          <img src="../imgs/team.svg">
                          <h5>Criação de Grupos</h5>
                          <p></p>
                      </div>
                      <div class="col-sm-4">
                          <img src="../imgs/job-search.svg">
                          <h5>Criação de Tarefas</h5>
                          <p></p>
                      </div>
                      <div class="col-sm-4">
                          <img src="../imgs/networking.svg">
                          <h5>Atribua atividades para outros membros do grupo</h5>
                          <p></p>
                      </div>
                  </div><br>
                  <div class="row text-center">
                      <div class="col-sm-4">
                          <img src="../imgs/alarm-clock.svg">
                          <h5>Determine data de vencimento para as tarefas</h5>
                          <p></p>
                      </div>
                      <div class="col-sm-4">
                          <img src="../imgs/diagram.svg">
                          <h5>Crie categorias para suas tarefas</h5>
                          <p></p>
                      </div>
                      <div class="col-sm-4">
                          <img src="../imgs/analytics.svg">
                          <h5>Informações gráficas sobre seus afazeres</h5>
                          <p></p>
                      </div>
                  </div><br>
              </div>
          </div>
          <div class="container-fluid free-trial-home content-padding text-center">
              <div class="container">
                  <h1>O controle de toda sua equipe em poucos cliques!</h1>
                  <h4>Clique no botão abaixo e veja como funciona na prática.</h4><br>
                  <p><a href="" class="btn btn-success btn-lg">Comece agora</a></p>
              </div>
          </div>
      </section>
      <footer id="footer">
          <div class="container text-center">
              <p>2018 - BTM - Todos os direitos reservados.</p><br>
          </div>
      </footer>
    </div>
</home>