<dashboard>
    <div>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container">
                    <a class="navbar-brand" href="dashboard.html"><img id="logobtm" src="imgs/logo.png"></a>
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
                                <a class="nav-link" href="#">Sair</a>
                            </li>
                        </ul>           
                    </div>
                </div>
            </nav>
        </header>
        <section class="container" id="content">
            <div class="row">
                <div class="col-md-12" id="categories">
                    <div class="row panel-header">
                        <div class="col-md-4">
                            <select class="form-control">
                                <option selected="true" disabled="true">Grupos</option>
                                <option>Grupo 1</option>
                                <option>Grupo 2</option>
                                <option>Grupo 3</option>
                                <option>Grupo 4</option>
                            </select>
                        </div>
                        <div class="col-md-4"><a href="annotations.html" class="btn">Anotações</a></div>
                        <div class="col-md-4 text-right"><a href="" class="btn" data-toggle="modal" data-target="#add_membro"><img src="imgs/user.svg" width="22"> Adicionar Membro</a></div>
                        <div class="col-md-4 text-right"><a href="" class="btn" data-toggle="modal" data-target="#criar_grupo"><img src="imgs/add-task.svg" width="22"> Adicionar Grupo</a></div>
                    </div>
                    </div>

                    <div class="modal fade" id="add_membro">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                          <div class="modal-header">
                            <h4 class="modal-title">Adicionar membro</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>

                          <div class="modal-body">
                            <div class="form-group">
                              <label for="email_membro">Email:</label>
                              <input type="text" class="form-control" id="email_membro" placeholder="Digite o email do novo membro">
                            </div>
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Enviar Solicitação</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                          </div>

                        </div>
                      </div>
                    </div>

                    <div class="modal fade" id="criar_grupo">
                      <div class="modal-dialog modal-dialog-centered">
                        <div class="modal-content">

                          <div class="modal-header">
                            <h4 class="modal-title">Criar Grupo</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                          </div>

                          <div class="modal-body">
                            <div class="form-group">
                              <label for="nome_grupo">Nome do Grupo:</label>
                              <input type="text" class="form-control" id="nome_grupo" placeholder="Digite um nome para o grupo.">
                            </div>
                          </div>

                          <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-dismiss="modal">Criar</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                          </div>

                        </div>
                      </div>
                    </div>

                    <div class="row">
                        <div class="col-md-3 card">
                            <div class="row group-category card-header">
                                <div class="col-md-9">
                                    <h4>Categoria 1</h4>
                                </div>
                                <div class="col-md-3">
                                    <a href="" class="btn" data-toggle="modal" data-target="#editar_categoria"><img src="imgs/pencil.svg" width="20"></a>
                                </div>
                            </div>

                            <div class="modal fade" id="editar_categoria">
                                <div class="modal-dialog modal-dialog-centered">
                                    <div class="modal-content">

                                    <div class="modal-header">
                                        <h4 class="modal-title">Editar Categoria</h4>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                        <label for="categoria_nome">Novo nome:</label>
                                        <input type="text" class="form-control" id="categoria_nome" placeholder="Digite um novo nome para a categoria.">
                                        </div> 
                                    </div>

                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-success" data-dismiss="modal">Editar</button>
                                        <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                                    </div>

                                    </div>
                                </div>
                                </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="" class="btn btn-success btn-block" data-toggle="modal" data-target="#criar_tarefa">Adicionar Tarefa</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 1</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 2</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 3</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 4</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 5</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 6</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 7</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 8</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <div class="modal fade" id="criar_tarefa">
                            <div class="modal-dialog modal-dialog-centered">
                                <div class="modal-content">

                                <div class="modal-header">
                                    <h4 class="modal-title">Nova Tarefa</h4>
                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                </div>

                                <div class="modal-body">
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <label for="nome_tarefa">Qual a sua tarefa:</label>
                                                <input type="text" class="form-control" id="nome_tarefa" placeholder="Digite sua tarefa">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 text-left">
                                                <div class="form-group">
                                                    <label for="prazo_tarefa">Prazo Final:</label>
                                                    <input type="date" class="form-control" id="prazo_tarefa">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 text-left">
                                                <div class="form-group">
                                                    <label for="horario_tarefa">Horário:</label>
                                                    <input type="time" class="form-control" id="horario_tarefa">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12 text-left">
                                                <label id="membro"><b>Responsável:</b></label>
                                                <select class="form-control" id="membro">
                                                    <option>Membro 1</option>
                                                    <option>Membro 2</option>
                                                    <option>Membro 3</option>
                                                </select>  
                                            </div>
                                        </div>
                                    </div> 
                                </div>

                                <div class="modal-footer">
                                    <button type="button" class="btn btn-success" data-dismiss="modal">Criar</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                                </div>

                                </div>
                            </div>
                            </div>

                        <div class="col-md-3 card">
                            <div class="row group-category card-header">
                                <div class="col-md-9">
                                    <h4>Categoria 2</h4>
                                </div>
                                <div class="col-md-3">
                                    <a href="" class="btn" data-toggle="modal" data-target="#editar_categoria"><img src="imgs/pencil.svg" width="20"></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="javascript:tarefa_sweet()" class="btn btn-success btn-block">Adicionar Tarefa</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 1</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 2</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 3</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 4</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 5</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 6</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 7</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 8</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 card">
                            <div class="row group-category card-header">
                                <div class="col-md-9">
                                    <h4>Categoria 3</h4>
                                </div>
                                <div class="col-md-3">
                                    <a href="" class="btn" data-toggle="modal" data-target="#editar_categoria"><img src="imgs/pencil.svg" width="20"></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="javascript:tarefa_sweet()" class="btn btn-success btn-block">Adicionar Tarefa</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 1</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 2</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 3</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 4</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 5</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 6</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 7</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 8</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 card">
                            <div class="row group-category card-header">
                                <div class="col-md-9">
                                    <h4>Categoria 4</h4>
                                </div>
                                <div class="col-md-3">
                                    <a href="" class="btn" data-toggle="modal" data-target="#editar_categoria"><img src="imgs/pencil.svg" width="20"></a>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"><a href="javascript:tarefa_sweet()" class="btn btn-success btn-block">Adicionar Tarefa</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 1</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 2</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 3</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 4</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 5</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 6</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 7</a></li>
                                        <li class="list-group-item"><a href="task.html" class="task">Tarefa 8</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</dashboard>