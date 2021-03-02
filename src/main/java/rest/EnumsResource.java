package rest;

import dto.EstadoDTO;
import entities.enums.Abrangencia;
import entities.enums.Acomodacao;
import entities.enums.Categoria;
import entities.enums.Estado;
import entities.enums.Reajuste;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/enums")
public class EnumsResource {

    @GET
    @Path("/abrangencias")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getAbrangencias() {
        return Arrays.stream(Abrangencia.values()).map(Abrangencia::getNome).collect(toList());
    }

    @GET
    @Path("/acomodacoes")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getAcomodacoes() {
        return Arrays.stream(Acomodacao.values()).map(Acomodacao::getNome).collect(toList());
    }

    @GET
    @Path("/categorias")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getCategorias() {
        return Arrays.stream(Categoria.values()).map(Categoria::getNome).collect(toList());
    }

    @GET
    @Path("/estados")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<EstadoDTO> getEstados() {
        return Arrays.stream(Estado.values()).map(EstadoDTO::new).collect(toList());
    }

    @GET
    @Path("/reajustes")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getReajustes() {
        return Arrays.stream(Reajuste.values()).map(Reajuste::getNome).collect(toList());
    }

}
