<criarTarefa>
    <div class="modal fade" id="criarTarefa">
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
                                <input type="text" class="form-control" id="task_name" placeholder="Digite sua tarefa">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-md-12 text-left">
                                <label for="description">Descrição: </label>
                                <textarea id="description" name="description" class="form-control" placeholder="Descreva sua tarefa..."></textarea>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-md-12 text-left">
                                <div class="form-group">
                                    <label for="deadline">Prazo Final:</label>
                                    <input type="datetime-local" class="form-control" id="deadline">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 text-left">
                                <label for="users">Responsável:</label>
                                <select multiple class="form-control" id="users">
                                    <option value="1">Membro 1</option>
                                    <option value="2">Membro 2</option>
                                    <option value="3">Membro 3</option>
                                    <option value="4">Membro 4</option>
                                </select>  
                            </div>
                        </div>
                    </div> 
                </div>

                <div class="modal-footer">
                    <input type="hidden" id="category_id" value="1">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Voltar</button>
                    <button type="button" class="btn btn-success" data-dismiss="modal" onclick={this.newTask}>Criar</button>
                </div>
            </div>
        </div>
    </div>

    <script>
        newTask(){
            let new_task = {category_id: document.getElementById('category_id').value, title: document.getElementById('task_name').value, description: document.getElementById('description').value, deadline: document.getElementById('deadline').value, users: document.getElementById('users').value};
            
            
            console.log(new_task);
        }
    </script>
</criarTarefa>