package rest;

import dto.OpcaoDTO;
import entities.Opcao;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IOpcaoResource;

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

@Path("/api/opcoes")
public class OpcaoResource {

    @Inject
    IOpcaoResource opcaoResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public OpcaoDTO get(@PathParam("id") Long id) {
        return new OpcaoDTO(opcaoResource.get(id));
    }

    @GET
    @GZIP
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<OpcaoDTO> list() {
        return Opcao.<Opcao>listAll().stream().map(OpcaoDTO::new).collect(toList());
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public OpcaoDTO add(OpcaoDTO opcaoDTO) {
        return new OpcaoDTO(opcaoResource.add(new Opcao(opcaoDTO)));
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public OpcaoDTO update(@PathParam("id") Long id, OpcaoDTO opcaoDTO) {
        return new OpcaoDTO(opcaoResource.update(id, new Opcao(opcaoDTO)));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return opcaoResource.delete(id);
    }

}
