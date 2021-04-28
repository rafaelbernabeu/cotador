package itest;

import mock.SegurancaServiceMock;
import service.UsuarioService;

import javax.inject.Inject;

import static service.UsuarioService.ADMIN;

public abstract class TesteIntegracao {

    @Inject
    UsuarioService usuarioService;

    @Inject
    protected SegurancaServiceMock segurancaService;

    public static final String NOME_USUARIO = "usuarioTeste";
    public static final String EMAIL_USUARIO = "teste@cotador.com";

    protected void criarUsuarioTeste() {
        usuarioService.adicionarUsuario(NOME_USUARIO, EMAIL_USUARIO, "tester", ADMIN);
    }

    protected void configuraUsuarioLogado() {
        segurancaService.setEmailUsuario(EMAIL_USUARIO);
    }

    protected void limparUsuarioLogado() {
        segurancaService.setEmailUsuario(null);
    }

}
