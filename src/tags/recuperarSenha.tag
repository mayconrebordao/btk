<recuperarSenha>
    <div class="modal fade" id="recuperar_senha" tabindex="-1" role="dialog" aria-labelledby="recuperar_senhaTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h5 class="modal-title" id="recuperar_senhaTitle">Recuperar Senha</h5>
                    </div>
                    <div class="modal-body">
                        <p><input autofocus="autofocus" value="" name="usuario[email]" id="email_usuario" type="email" placeholder="E-mail" class="form-control" required="required"></p>
                    </div>
                    <div class="modal-footer">
                        <li><input name="commit" value="Enviar" class="btn btn-success btn-fill btn-block" data-disable-with="Enviar" type="submit">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <style>
        a{
            cursor: pointer;
        }
        #recuperar_senha .modal-footer ul{
            list-style: none    ;
            padding: 0;
            width: 100%;
        }
    </style>
</recuperarSenha>