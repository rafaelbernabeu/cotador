package rest;

import entities.Profissao;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IProfissaoResource;

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

@Path("/api/profissoes")
public class ProfissaoResource {

    @Inject
    IProfissaoResource profissaoResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Profissao get(@PathParam("id") Long id) {
        return profissaoResource.get(id);
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<Profissao> list() {
        return Profissao.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao add(Profissao profissao) {
        return profissaoResource.add(profissao);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public Profissao update(@PathParam("id") Long id, Profissao profissao) {
        return profissaoResource.update(id, profissao);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return profissaoResource.delete(id);
    }

}
