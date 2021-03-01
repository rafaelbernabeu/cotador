package rest;

import dto.UsuarioDTO;
import entities.Role;
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
    @Path("{id}/roles")
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Role> getRoles(@PathParam("id") Long id) {
        return usuarioResource.get(id).getRoles();
    }

    @POST
    @RolesAllowed("admin")
    @Path("{id}/roles")
    @Produces("application/json")
    public List<Role> atualizarRolesDoUsuario(@PathParam("id") Long id, List<Role> roles) {
        return usuarioService.atualizarRolesDoUsuario(id, roles);
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
    public UsuarioDTO update(@PathParam("id") Long id, Usuario usuario) {
        return new UsuarioDTO(usuarioResource.update(id, usuario));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return usuarioResource.delete(id);
    }

}
