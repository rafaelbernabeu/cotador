package rest;

import entities.Entidade;
import io.quarkus.panache.common.Page;
import io.quarkus.panache.common.Sort;
import rest.interfaces.IEntidadeResource;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

@Path("/api/entidade")
public class EntidadeResource {

    @Inject
    IEntidadeResource entidadeResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Entidade get(@PathParam("id") Long id) {
        return entidadeResource.get(id);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Entidade> list(@QueryParam("sort") @DefaultValue("id") String columnName,
                               @QueryParam("page") @DefaultValue("0") int pageIndex,
                               @QueryParam("size") @DefaultValue("20") int pageSize) {

        Sort sort = Sort.by(columnName);
        Page page = Page.of(pageIndex, pageSize);
        return entidadeResource.list(page, sort);
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade add(Entidade entidade) {
        return entidadeResource.add(entidade);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade update(@PathParam("id") Long id, Entidade entidade) {
        return entidadeResource.update(id, entidade);
    }

    @DELETE
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return entidadeResource.delete(id);
    }

}
