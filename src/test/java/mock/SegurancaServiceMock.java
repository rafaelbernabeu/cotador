package mock;

import io.quarkus.test.Mock;
import service.SegurancaService;

@Mock
public class SegurancaServiceMock extends SegurancaService {

    private static String emailUsuario;

    public void setEmailUsuario(String emailUsuario) {
        SegurancaServiceMock.emailUsuario = emailUsuario;
    }

    @Override
    public String getEmailUsuarioLogado() {
        return emailUsuario == null ? super.getEmailUsuarioLogado() : emailUsuario;
    }
}
