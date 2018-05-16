<anotacoes>
    <style>    
        #content{
            padding-top: 20px;
        }
        .panel-header{
            background: #f8f9fa;
            padding: 10px;
            border-top: 1px #ccc solid;
            border-left: 1px #ccc solid;
            border-right: 1px #ccc solid;
        }
        .navbar-brand img{
            width: 150px;
        }
        #dashboard-menu{
            line-height: 32px;
        }
        .task{
            width: 100%;
            height: 100px;
            text-align: center;
            float: left;
            display: inline-block;
            vertical-align: top;
            padding: 10px;
            color: black;
            background: #ff8;
            text-align: center;
            font-family: "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            box-shadow: 2px 2px 2px #eee;
            line-height: 14px;
        }
        .task:hover{
            text-decoration: none;
        }
        .task-description{
            font-size: 10pt;
        }
    </style>
    <script></script>
    <addMembro></addMembro>
    <criarGrupo></criarGrupo>
    <editarCategoria></editarCategoria>
    <criarTarefa></criarTarefa>
    <cadastrarCategoria></cadastrarCategoria>
    <infoTarefa></infoTarefa>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container">
                <a class="navbar-brand" href="#/dashboard"><img id="logobtm" src="imgs/logo.png"></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#dashboard-menu" aria-controls="dashboard-menu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                
                <div class="collapse navbar-collapse" id="dashboard-menu">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#">Tutorial</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><img src="imgs/notifications.svg" width="32"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#"><img src="imgs/alguem.jpg" class="rounded" width="50"></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#/home">Sair</a>
                        </li>
                    </ul>           
                </div>
            </div>
        </nav>
    </header>
    <section class="container" id="content">
        <h1>Anotações</h1>
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Well done!</h4>
            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
            <hr>
            <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
        </div>
        <div class="alert alert-warning" role="alert">
            <h4 class="alert-heading">Well</h4>
            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
            <hr>
            <p class="mb-0">Whenever you need to.</p>
        </div>
        <div class="alert alert-danger" role="alert">
            <h4 class="alert-heading">Done!</h4>
            <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
            <hr>
            <p class="mb-0">Whenever you need to, be sure to use margin utilities to keep things nice and tidy.</p>
        </div>
    </section>
</anotacoes>
