package rest;

import dto.EstadoDTO;
import entities.Administradora;
import entities.Tabela;
import entities.enums.Estado;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;

@Path("/api/estados")
public class EstadosResource {

    @GET
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<EstadoDTO> getEstados() {
        return Arrays.stream(Estado.values()).map(EstadoDTO::new).collect(toList());
    }

    @GET
    @Path("{sigla}/administradoras")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public Collection<Administradora> getAdmininstradorasByEstadoAndCategoria(@PathParam("sigla") String sigla, @QueryParam("categoria") String categoria) {
        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(sigla))
                .map(Tabela::getAdministradora)
                .collect(toSet());

    }

}
