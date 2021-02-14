package rest;

import entities.Tabela;
import rest.interfaces.ITabelaResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

@Path("/api/tabelas")
public class TabelaResource {

    @Inject
    ITabelaResource tabelaResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Tabela get(@PathParam("id") Long id) {
        return tabelaResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Tabela> list() {
        return Tabela.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Tabela add(Tabela tabela) {
        return tabelaResource.add(tabela);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Tabela update(@PathParam("id") Long id, Tabela tabela) {
        return tabelaResource.update(id, tabela);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return tabelaResource.delete(id);
    }

}
