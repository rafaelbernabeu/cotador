package rest;

import dto.ProdutoDTO;
import dto.TabelaDTO;
import entities.Tabela;
import org.jboss.resteasy.annotations.GZIP;
import rest.interfaces.ITabelaResource;

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
import javax.ws.rs.QueryParam;
import java.util.Collection;
import java.util.List;
import java.util.stream.Stream;

import static java.util.Objects.nonNull;
import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;
import static service.UsuarioService.ADMIN;

@Path("/api/tabelas")
public class TabelaResource {

    @Inject
    ITabelaResource tabelaResource;

    @GET
    @GZIP
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Tabela get(@PathParam("id") Long id) {
        return tabelaResource.get(id);
    }

    @GET
    @GZIP
    @Path("{id}/produtos")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Collection<ProdutoDTO> getProdutosByTabelaAndOperadoraAndAdministradoraAndEstadoAndCategoriaAndMEI(
            @PathParam("id") Long idTabela,
            @QueryParam("operadora") Long idOperadora,
            @QueryParam("administradora") Long idAdministradora,
            @QueryParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria,
            @QueryParam("mei") Boolean contemplaMei) {

        Stream<Tabela> stream = Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getId().equals(idTabela))
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado));

        if (nonNull(idAdministradora)) {
            stream = stream.filter(t -> t.getAdministradora().getId().equals(idAdministradora));
        }

        if (nonNull(contemplaMei)) {
            stream = stream.filter(t -> t.getContemplaMEI().equals(contemplaMei));
        }

        return stream.filter(t -> t.getOperadora().getId().equals(idOperadora))
                .flatMap(t -> t.getProdutos().stream())
                .map(ProdutoDTO::new)
                .collect(toSet());
    }

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<TabelaDTO> list() {
        return Tabela.<Tabela>listAll().stream().map(TabelaDTO::new).collect(toList());
    }

    @POST
    @GZIP
    @Transactional
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public TabelaDTO add(TabelaDTO tabelaDTO) {
        return new TabelaDTO(tabelaResource.add(new Tabela(tabelaDTO)));
    }

    @PUT
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    @Consumes("application/json")
    @Produces("application/json")
    public TabelaDTO update(@PathParam("id") Long id, TabelaDTO tabelaDTO) {
        if (tabelaDTO.getAdministradora() == null) {
            Tabela.update("administradora = null where id = ?1", id);
        }
        return new TabelaDTO(tabelaResource.update(id, new Tabela(tabelaDTO)));
    }

    @DELETE
    @GZIP
    @Transactional
    @Path("{id}")
    @RolesAllowed({ADMIN})
    public boolean delete(@PathParam("id") Long id) {
        return tabelaResource.delete(id);
    }

}
