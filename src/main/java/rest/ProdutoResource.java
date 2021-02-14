package rest;

import entities.Produto;
import rest.interfaces.IProdutoResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

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
    public List<Produto> list() {
        return Produto.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Produto add(Produto produto) {
        return produtoResource.add(produto);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Produto update(@PathParam("id") Long id, Produto produto) {
        return produtoResource.update(id, produto);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return produtoResource.delete(id);
    }

}
