package rest;

import entities.Role;
import entities.Usuario;
import rest.interfaces.IUsuarioResource;
import service.UsuarioService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

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
    public Usuario get(@PathParam("id") Long id) {
        return usuarioResource.get(id);
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
    @Path("{id}/profissoes")
    @Produces("application/json")
    public List<Role> atualizarRolesDoUsuario(@PathParam("id") Long id, List<Role> roles) {

        return usuarioService.atualizarRolesDoUsuario(id, roles);
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Usuario> list(@QueryParam("sort") @DefaultValue("id") String columnName,
                              @QueryParam("page") @DefaultValue("0") int pageIndex,
                              @QueryParam("size") @DefaultValue("20") int pageSize) {

//        Sort sort = Sort.by(columnName);
//        Page page = Page.of(pageIndex, pageSize);
//        return entidadeResource.list(page, sort);
        return Usuario.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Usuario add(Usuario usuario) {
        return usuarioResource.add(usuario);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Usuario update(@PathParam("id") Long id, Usuario usuario) {
        return usuarioResource.update(id, usuario);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return usuarioResource.delete(id);
    }

}
