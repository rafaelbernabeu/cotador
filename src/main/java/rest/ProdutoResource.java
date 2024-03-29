package rest;

import dto.ProdutoDTO;
import entities.Produto;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IProdutoResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.PRODUTO;
import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;
import static service.UsuarioService.OPERADOR;
import static util.SortUtil.sortProdutos;

@Path("/api/produtos")
public class ProdutoResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IProdutoResource produtoResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Produto get(@PathParam("id") Long id) {
        return produtoResource.get(id);
    }

    /**
     * Bug ao retornar grandes objetos.
     * https://github.com/quarkusio/quarkus/issues/14695
     */
    @GET
    @GZIP
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public List<ProdutoDTO> list() {
        return sortProdutos(Produto.<Produto>listAll().stream()
                .map(ProdutoDTO::new))
                .collect(toList());
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO add(ProdutoDTO produtoDTO) {
        return new ProdutoDTO(auditoriaService.salvarAlteracao(
                produtoResource.add(new Produto(produtoDTO)),
                PRODUTO, INCLUSAO));
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO update(@PathParam("id") Long id, ProdutoDTO produtoDTO) {
        return new ProdutoDTO(auditoriaService.salvarAlteracao(
                produtoResource.update(id, new Produto(produtoDTO)),
                PRODUTO, EDICAO));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, PRODUTO);
        return produtoResource.delete(id);
    }

}
