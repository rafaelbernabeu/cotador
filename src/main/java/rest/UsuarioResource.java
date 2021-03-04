package rest;

import dto.UsuarioDTO;
import entities.Usuario;
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

@Path("/api/usuarios")
public class UsuarioResource {

    @Inject
    IUsuarioResource usuarioResource;

    @Inject
    UsuarioService usuarioService;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public UsuarioDTO get(@PathParam("id") Long id) {
        return new UsuarioDTO(usuarioResource.get(id));
    }


    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<UsuarioDTO> list() {
        return Usuario.<Usuario>listAll().stream().map(UsuarioDTO::new).collect(Collectors.toList());
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public UsuarioDTO add(Usuario usuario) {
        return new UsuarioDTO(usuarioResource.add(usuario));
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public UsuarioDTO update(@PathParam("id") Long id, Usuario usuarioNovo) {
        Usuario usuarioAtual = Usuario.findById(id);
        usuarioNovo.setPassword(usuarioAtual.getPassword());
        return new UsuarioDTO(usuarioResource.update(id, usuarioNovo));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return usuarioResource.delete(id);
    }

}
