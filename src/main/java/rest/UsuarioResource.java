package rest;

import dto.UsuarioDTO;
import entities.Usuario;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IUsuarioResource;
import service.UsuarioService;

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
import java.util.stream.Collectors;

import static service.UsuarioService.ADMIN;

@Path("/api/usuarios")
public class UsuarioResource {

    @Inject
    IUsuarioResource usuarioResource;

    @Inject
    UsuarioService usuarioService;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public UsuarioDTO get(@PathParam("id") Long id) {
        return new UsuarioDTO(usuarioResource.get(id));
    }


    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<UsuarioDTO> list() {
        return Usuario.<Usuario>listAll().stream().map(UsuarioDTO::new).collect(Collectors.toList());
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public UsuarioDTO add(Usuario usuario) {
        return new UsuarioDTO(usuarioResource.add(usuario));
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public UsuarioDTO update(@PathParam("id") Long id, Usuario usuarioNovo) {
        Usuario usuarioAtual = Usuario.findById(id);
        usuarioNovo.setPassword(usuarioAtual.getPassword());
        return new UsuarioDTO(usuarioResource.update(id, usuarioNovo));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return usuarioResource.delete(id);
    }

}
