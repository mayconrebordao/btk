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
                                <label for="nomeTarefa">Qual a sua tarefa:</label>
                                <input type="text" class="form-control" id="nomeTarefa" placeholder="Digite sua tarefa">
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-md-12 text-left">
                                <label id="descriçaoTarefa">Descrição: </label>
                                <textarea id="descriçaoTarefa" name="comment" class="form-control">Descreva sua tarefa...</textarea>
                            </div>
                        </div><br>
                        <div class="row">
                            <div class="col-md-6 text-left">
                                <div class="form-group">
                                    <label for="prazoTarefa">Prazo Final:</label>
                                    <input type="date" class="form-control" id="prazoTarefa">
                                </div>
                            </div>
                            <div class="col-md-6 text-left">
                                <div class="form-group">
                                    <label for="horarioTarefa">Horário:</label>
                                    <input type="time" class="form-control" id="horarioTarefa">
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
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Voltar</button>
                </div>

            </div>
        </div>
    </div>
</criarTarefa>