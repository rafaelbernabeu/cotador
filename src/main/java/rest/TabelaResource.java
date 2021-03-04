package rest;

import dto.ProdutoDTO;
import dto.TabelaDTO;
import entities.Tabela;
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
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/tabelas")
public class TabelaResource {

    @Inject
    ITabelaResource tabelaResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Tabela get(@PathParam("id") Long id) {
        return tabelaResource.get(id);
    }

    @GET
    @Path("{id}/produtos")
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<ProdutoDTO> getProdutosByTabelaAndOperadoraAndAdministradoraAndEstadoAndCategoriaAndMEI(
            @PathParam("id") Long idTabela,
            @QueryParam("operadora") Long idOperadora,
            @QueryParam("administradora") Long idAdministradora,
            @QueryParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria,
            @QueryParam("mei") Boolean contemplaMei) {

        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getId().equals(idTabela))
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado))
                .filter(t -> t.getAdministradora().getId().equals(idAdministradora))
                .filter(t -> t.getContemplaMEI().equals(contemplaMei))
                .filter(t -> t.getOperadora().getId().equals(idOperadora))
                .flatMap(t -> t.getProdutos().stream())
                .map(ProdutoDTO::new)
                .collect(toList());
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<TabelaDTO> list() {
        return Tabela.<Tabela>listAll().stream().map(TabelaDTO::new).collect(toList());
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public TabelaDTO add(TabelaDTO tabelaDTO) {
        return new TabelaDTO(tabelaResource.add(new Tabela(tabelaDTO)));
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public TabelaDTO update(@PathParam("id") Long id, TabelaDTO tabelaDTO) {
        return new TabelaDTO(tabelaResource.update(id, new Tabela(tabelaDTO)));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return tabelaResource.delete(id);
    }

}
