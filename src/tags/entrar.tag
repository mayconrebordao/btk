<entrar>
    <div class="modal fade" id="entrar" tabindex="-1" role="dialog" aria-labelledby="entrarTitle" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <form>
                    <div class="modal-header">
                        <h5 class="modal-title" id="entrarTitle">Entrar</h5>
                    </div>
                    <div class="modal-body">
                        <p><input autofocus="autofocus" value="" name="usuario[email]" id="email_usuario" type="email" placeholder="E-mail" class="form-control" required="required"></p>
                        <p><input autocomplete="off" name="user[password]" id="senha_usuario" type="password" placeholder="Senha" class="form-control" required="required"></p>
                    </div>
                    <div class="modal-footer">
                        <ul>
                            <li><input name="commit" value="Entrar" class="btn btn-success btn-fill btn-block" data-disable-with="Entrar" type="submit"></li>
                            <li><a class="btn btn-block" data-toggle="modal" data-target="#recuperar_senha">Recuperar senha</a></li>
                            <li><a class="btn btn-block" data-toggle="modal" data-target="#cadastro">Cadastre-se grátis</a></li>
                        </ul>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <style>
        a{
            cursor: pointer;
        }
        #entrar .modal-footer ul{
            list-style: none;
            padding: 0;
            width: 100%;
        }
    </style>
</entrar>