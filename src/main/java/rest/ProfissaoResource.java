package rest;

import entities.Profissao;
import rest.interfaces.IProfissaoResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

@Path("/api/profissoes")
public class ProfissaoResource {

    @Inject
    IProfissaoResource profissaoResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Profissao get(@PathParam("id") Long id) {
        return profissaoResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Profissao> list(@QueryParam("sort") @DefaultValue("id") String columnName,
                               @QueryParam("page") @DefaultValue("0") int pageIndex,
                               @QueryParam("size") @DefaultValue("20") int pageSize) {

//        Sort sort = Sort.by(columnName);
//        Page page = Page.of(pageIndex, pageSize);
//        return profissaoResource.list(page, sort);
        return Profissao.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao add(Profissao profissao) {
        return profissaoResource.add(profissao);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao update(@PathParam("id") Long id, Profissao profissao) {
        return profissaoResource.update(id, profissao);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return profissaoResource.delete(id);
    }

}
