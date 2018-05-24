<dashboard>
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
        #board .col-md-12{
            padding: 0;
        }
    </style>
    <script>
        this.mixin("state")
        console.log(this.state)
        categoryTasks(tasks, category_id){
            return tasks.filter(task => task.category_id == category_id);
        }
        this.groups = [
            {id: 1, name: 'Grupo 1'},
            {id: 2, name: 'Grupo 2'},
            {id: 3, name: 'Grupo 3'},
            {id: 4, name: 'Grupo 4'},
            {id: 5, name: 'Grupo 5'}
        ];
        this.categories = [
            {id: 1, name: 'Categoria 1'},
            {id: 2, name: 'Categoria 2'},
            {id: 3, name: 'Categoria 3'},
            {id: 4, name: 'Categoria 4'},
        ];
        this.tasks = this.state.dashboardReducer.tasks;
    </script>
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
                            <a class="nav-link" href="#/home">Home</a>
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
            <div class="row panel-header" id="categories">
                <div class="col-md-3">
                    <select class="form-control">
                        <option selected="true" disabled="true">Grupos</option>
                        <option each={ groups } value="{id}">{name}</option>
                    </select>
                </div>
                <div class="col-md-3"><a href="#/anotacoes" class="btn"><img src="imgs/review.svg" width="22"> Anotações</a></div>
                <div class="col-md-2 text-right"><a href="" class="btn" data-toggle="modal" data-target="#cadastrarCategoria"><img src="imgs/category.svg" width="22"> Cadastrar Categoria</a></div>
                <div class="col-md-2 text-right"><a href="" class="btn" data-toggle="modal" data-target="#addMembro"><img src="imgs/user.svg" width="22"> Adicionar Membro</a></div>
                <div class="col-md-2 text-right"><a href="" class="btn" data-toggle="modal" data-target="#criarGrupo"><img src="imgs/multiple.svg" width="22"> Adicionar Grupo</a></div>
            </div>
            
            <div class="row" id="board">
                <div class="col-md-3 card" each={ categories } >
                    <div class="row group-category card-header">
                        <div class="col-md-9">
                            <h4>{name}</h4>
                        </div>
                        <div class="col-md-3">
                            <a href="" class="btn" data-toggle="modal" data-target="#editarCategoria"><img src="imgs/edit.svg" width="20"></a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">
                                    <a href="" class="btn btn-success btn-block" data-toggle="modal" data-target="#criarTarefa">Adicionar Tarefa</a>
                                </li>
                                <li class="list-group-item" each={ categoryTasks(tasks, id) }>
                                    <a href="" class="task" data-toggle="modal" data-target="#infoTarefa" onclick={current_task = id}>
                                        <p>{ title }</p>
                                        <span class="task-description">{ description }</span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</dashboard>
