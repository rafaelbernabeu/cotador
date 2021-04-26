package rest;

import entities.Entidade;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IEntidadeResource;

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

import static service.UsuarioService.ADMIN;
import static service.UsuarioService.OPERADOR;

@Path("/api/entidades")
public class EntidadeResource {

    @Inject
    IEntidadeResource entidadeResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Entidade get(@PathParam("id") Long id) {
        return entidadeResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public List<Entidade> list() {
        return Entidade.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade add(Entidade entidade) {
        return entidadeResource.add(entidade);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Entidade update(@PathParam("id") Long id, Entidade entidade) {
        return entidadeResource.update(id, entidade);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        return entidadeResource.delete(id);
    }

}
