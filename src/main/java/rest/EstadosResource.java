package rest;

import dto.EstadoDTO;
import entities.Administradora;
import entities.Operadora;
import entities.Tabela;
import entities.enums.Estado;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import static java.util.Objects.nonNull;
import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;

@Path("/api/estados")
public class EstadosResource {

    @GET
    @GZIP
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<EstadoDTO> getEstados() {
        List<Estado> estados = new ArrayList<>(Estado.values().length);
        estados.addAll(Arrays.asList(Estado.values()));
        List<EstadoDTO> estadosOrdemEspecifica = new ArrayList<>(estados.size());
        estadosOrdemEspecifica.add(new EstadoDTO(estados.remove(estados.indexOf(Estado.DISTRITO_FEDERAL))));
        estadosOrdemEspecifica.add(new EstadoDTO(estados.remove(estados.indexOf(Estado.GOIAS))));
        estadosOrdemEspecifica.addAll(estados.stream().map(EstadoDTO::new).collect(toList()));
        return estadosOrdemEspecifica;
    }

    @GET
    @GZIP
    @Path("{sigla}/administradoras")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public Collection<Administradora> getAdmininstradorasByEstadoAndCategoria(@PathParam("sigla") String sigla, @QueryParam("categoria") String categoria) {
        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(sigla))
                .filter(t -> nonNull(t.getAdministradora()))
                .map(Tabela::getAdministradora)
                .collect(toSet());

    }

    @GET
    @GZIP
    @Path("{estado}/operadoras")
    @RolesAllowed("admin")
    @Produces("application/json")
    public Collection<Operadora> getOperadorasByEstadoAndCategoria(
            @PathParam("estado") String siglaEstado,
            @QueryParam("categoria") String categoria) {

        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .filter(t -> t.getEstado().getSigla().equals(siglaEstado))
                .map(Tabela::getOperadora)
                .collect(toSet());
    }

}
