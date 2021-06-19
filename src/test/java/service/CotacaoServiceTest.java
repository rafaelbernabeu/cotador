package service;

import dto.CotacaoDTO;
import io.quarkus.test.junit.QuarkusTest;
import itest.TesteIntegracao;
import org.junit.jupiter.api.*;
import org.junit.jupiter.api.TestInstance.Lifecycle;

import javax.inject.Inject;

@QuarkusTest
@TestInstance(Lifecycle.PER_CLASS)
public class CotacaoServiceTest extends TesteIntegracao {

    @Inject
    CotacaoService cotacaoService;

    @BeforeAll
    void setup() {
        criarUsuarioTeste();
        configuraUsuarioLogado();
    }

    @AfterAll
    void tearDown() {
        limparUsuarioLogado();
    }

    @Test
    public void testeSanidade() {
        CotacaoDTO consulta = new CotacaoDTO();

        CotacaoDTO cotacaoDTO1 = cotacaoService.geraCotacao(consulta);
        CotacaoDTO cotacaoDTO2 = cotacaoService.geraCotacao(consulta);

        cotacaoDTO1.setId(null);
        cotacaoDTO2.setId(null);

        Assertions.assertEquals(cotacaoDTO1, cotacaoDTO2);
    }

}
