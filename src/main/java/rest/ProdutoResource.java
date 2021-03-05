package rest;

import dto.ProdutoDTO;
import entities.Produto;
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

@Path("/api/produtos")
public class ProdutoResource {

    @Inject
    IProdutoResource produtoResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Produto get(@PathParam("id") Long id) {
        return produtoResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<ProdutoDTO> list() {
        return Produto.<Produto>listAll().stream().map(ProdutoDTO::new).collect(toList());
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO add(ProdutoDTO produtoDTO) {
        return new ProdutoDTO(produtoResource.add(new Produto(produtoDTO)));
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public ProdutoDTO update(@PathParam("id") Long id, ProdutoDTO produtoDTO) {
        return new ProdutoDTO(produtoResource.update(id, new Produto(produtoDTO)));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return produtoResource.delete(id);
    }

}
