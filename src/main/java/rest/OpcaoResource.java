package rest;

import dto.OpcaoDTO;
import entities.Opcao;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IOpcaoResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.List;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.OPCAO;
import static java.util.Comparator.comparing;
import static java.util.stream.Collectors.toList;
import static service.UsuarioService.ADMIN;
import static service.UsuarioService.OPERADOR;

@Path("/api/opcoes")
public class OpcaoResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IOpcaoResource opcaoResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public OpcaoDTO get(@PathParam("id") Long id) {
        return new OpcaoDTO(opcaoResource.get(id));
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public List<OpcaoDTO> list() {
        return Opcao.<Opcao>listAll().stream()
                .map(OpcaoDTO::new)
                .sorted(comparing(OpcaoDTO::getAcomodacao))
                .sorted(comparing(OpcaoDTO::getCoparticipacao))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getOperadora().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getAdministradora() == null ? "Z" : opcaoDTO.getTabela().getAdministradora().getNome()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getEstado().getSigla()))
                .sorted(comparing(opcaoDTO -> opcaoDTO.getTabela().getCategoria()))
                .collect(toList());
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public OpcaoDTO add(OpcaoDTO opcaoDTO) {
        return new OpcaoDTO(auditoriaService.salvarAlteracao(
                opcaoResource.add(new Opcao(opcaoDTO)),
                OPCAO, INCLUSAO));

    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public OpcaoDTO update(@PathParam("id") Long id, OpcaoDTO opcaoDTO) {
        return new OpcaoDTO(auditoriaService.salvarAlteracao(
                opcaoResource.update(id, new Opcao(opcaoDTO)),
                OPCAO, EDICAO));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, OPCAO);
        return opcaoResource.delete(id);
    }

}
