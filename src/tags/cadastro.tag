<cadastro>
    <div class="modal fade" id="cadastro" tabindex="-1" role="dialog" aria-labelledby="cadastroTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="cadastroTitle">Cadastro</h5>
                </div>
                <div class="modal-body">
                    <form>
                        <p><input autofocus="autofocus" value="" name="usuario[nome]" id="nome_usuario" type="text" placeholder="Nome" class="form-control" required="required"></p>
                        <p><input autofocus="autofocus" value="" name="usuario[email]" id="email_usuario" type="email" placeholder="E-mail" class="form-control" required="required"></p>
                        <p><input autocomplete="off" name="user[password]" id="senha_usuario" type="password" placeholder="Senha" class="form-control" required="required"></p>
                        <p><input autocomplete="off" name="user[password]" id="confirmacao_senha_usuario" type="password" placeholder="Confirme sua senha" class="form-control" required="required"></p>
                    </form>
                </div>
                <div class="modal-footer">
                    <input name="commit" value="Cadastrar" class="btn btn-success btn-fill btn-block" data-disable-with="Cadastrar-se" type="submit">
                </div>
            </div>
        </div>
    </div>
</cadastro>