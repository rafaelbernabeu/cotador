package rest;

import dto.ProdutoDTO;
import dto.TabelaDTO;
import entities.Operadora;
import entities.Produto;
import entities.Tabela;
import rest.interfaces.IOperadoraResource;

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

import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;

@Path("/api/operadoras")
public class OperadoraResource {

    @Inject
    IOperadoraResource operadoraResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Operadora get(@PathParam("id") Long id) {
        return operadoraResource.get(id);
    }

    @GET
    @Path("{id}/produtos")
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<ProdutoDTO> getProdutosByOperadora(@PathParam("id") Long id) {
        return Produto.<Produto>listAll().stream().filter(p -> p.getOperadora().getId().equals(id)).map(ProdutoDTO::new).collect(toList());
    }

    @GET
    @Path("{id}/tabelas")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Collection<TabelaDTO> getTabelasByOperadoraAndAdministradoraAndEstadoAndCategoriaAndMEI(
            @PathParam("id") Long idOperadora,
            @QueryParam("administradora") Long idAdministradora,
            @QueryParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria,
            @QueryParam("mei") Boolean contemplaMei) {

        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado))
                .filter(t -> t.getAdministradora().getId().equals(idAdministradora))
                .filter(t -> t.getContemplaMEI().equals(contemplaMei))
                .filter(t -> t.getOperadora().getId().equals(idOperadora))
                .map(TabelaDTO::new)
                .collect(toSet());
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<Operadora> list() {
        return Operadora.listAll();
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora add(Operadora operadora) {
        return operadoraResource.add(operadora);
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public Operadora update(@PathParam("id") Long id, Operadora operadora) {
        return operadoraResource.update(id, operadora);
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return operadoraResource.delete(id);
    }

}
