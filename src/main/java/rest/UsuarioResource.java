package rest;

import dto.UsuarioDTO;
import entities.Usuario;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IUsuarioResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;
import java.util.stream.Collectors;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.USUARIO;
import static service.UsuarioService.ADMIN;

@Path("/api/usuarios")
public class UsuarioResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IUsuarioResource usuarioResource;

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
        return new UsuarioDTO(auditoriaService.salvarAlteracao(
                usuarioResource.add(usuario),
                USUARIO, INCLUSAO));
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
        return new UsuarioDTO(auditoriaService.salvarAlteracao(
                usuarioResource.update(id, usuarioNovo),
                USUARIO, EDICAO));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, USUARIO);
        return usuarioResource.delete(id);
    }

}
