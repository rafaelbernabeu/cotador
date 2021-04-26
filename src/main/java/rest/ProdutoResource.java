package rest;

import dto.ProdutoDTO;
import entities.Produto;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IProdutoResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;

@Path("/api/produtos")
public class ProdutoResource {

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
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<ProdutoDTO> list() {
        return Produto.<Produto>listAll().stream().map(ProdutoDTO::new).collect(toList());
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO add(ProdutoDTO produtoDTO) {
        return new ProdutoDTO(produtoResource.add(new Produto(produtoDTO)));
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO update(@PathParam("id") Long id, ProdutoDTO produtoDTO) {
        return new ProdutoDTO(produtoResource.update(id, new Produto(produtoDTO)));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return produtoResource.delete(id);
    }

}
