package rest;

import dto.ProdutoDTO;
import dto.TabelaDTO;
import entities.Operadora;
import entities.Produto;
import entities.Tabela;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.IOperadoraResource;
import service.AuditoriaService;

import javax.annotation.security.RolesAllowed;
import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import java.util.Collection;
import java.util.List;
import java.util.stream.Stream;

import static entities.enums.TipoAlteracao.EDICAO;
import static entities.enums.TipoAlteracao.INCLUSAO;
import static entities.enums.TipoEntidade.OPERADORA;
import static java.util.Objects.nonNull;
import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;
import static service.UsuarioService.*;

@Path("/api/operadoras")
public class OperadoraResource {

    @Inject
    AuditoriaService auditoriaService;

    @Inject
    IOperadoraResource operadoraResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Operadora get(@PathParam("id") Long id) {
        return operadoraResource.get(id);
    }

    @GET
    @GZIP
    @Path("{id}/produtos")
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public List<ProdutoDTO> getProdutosByOperadora(@PathParam("id") Long id) {
        return Produto.<Produto>listAll().stream().filter(p -> p.getOperadora().getId().equals(id)).map(ProdutoDTO::new).collect(toList());
    }

    @GET
    @GZIP
    @Path("{id}/tabelas")
    @RolesAllowed({ADMIN, OPERADOR})
    @Produces("application/json")
    public Collection<TabelaDTO> getTabelasByOperadoraAndAdministradoraAndEstadoAndCategoriaAndMEI(
            @PathParam("id") Long idOperadora,
            @QueryParam("administradora") Long idAdministradora,
            @QueryParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria,
            @QueryParam("mei") Boolean contemplaMei) {

        Stream<Tabela> stream = Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado));

        if (nonNull(idAdministradora)) {
            stream = stream.filter(t -> nonNull(t.getAdministradora()) && t.getAdministradora().getId().equals(idAdministradora));
        }

        if (nonNull(contemplaMei)) {
            stream = stream.filter(t -> t.getContemplaMEI().equals(contemplaMei));
        }

        return stream.filter(t -> t.getOperadora().getId().equals(idOperadora))
                .map(TabelaDTO::new)
                .collect(toSet());
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN, VENDEDOR, OPERADOR})
    @Produces("application/json")
    public List<Operadora> list() {
        return Operadora.listAll();
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora add(Operadora operadora) {
        return auditoriaService.salvarAlteracao(
                operadoraResource.add(operadora),
                OPERADORA, INCLUSAO);
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora update(@PathParam("id") Long id, Operadora operadora) {
        return auditoriaService.salvarAlteracao(
                operadoraResource.update(id, operadora),
                OPERADORA, EDICAO);
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN, OPERADOR})
    public boolean delete(@PathParam("id") Long id) {
        auditoriaService.salvarExclusao(id, OPERADORA);
        return operadoraResource.delete(id);
    }

}
