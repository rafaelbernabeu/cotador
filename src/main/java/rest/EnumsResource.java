package rest;

import dto.EstadoDTO;
import entities.enums.Abrangencia;
import entities.enums.Acomodacao;
import entities.enums.Categoria;
import entities.enums.Estado;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

@Path("/api/enums")
public class EnumsResource {

    @GET
    @Path("/abrangencias")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getAbrangencias() {
        return Arrays.stream(Abrangencia.values()).map(Abrangencia::getNome).collect(Collectors.toList());
    }

    @GET
    @Path("/acomodacoes")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public Acomodacao[] getAcomodacoes() {
        return Acomodacao.values();
    }

    @GET
    @Path("/estados")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<EstadoDTO> getEstados() {
        return Arrays.stream(Estado.values()).map(EstadoDTO::new).collect(Collectors.toList());
    }

    @GET
    @Path("/categorias")
    @RolesAllowed({"user", "admin"})
    @Produces("application/json")
    public List<String> getCategorias() {
        return Arrays.stream(Categoria.values()).map(Categoria::getNome).collect(Collectors.toList());
    }

}
