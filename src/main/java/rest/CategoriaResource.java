package rest;

import dto.EstadoDTO;
import entities.Tabela;
import entities.enums.Categoria;
import org.jboss.resteasy.annotations.GZIP;

import javax.annotation.security.RolesAllowed;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import static java.util.stream.Collectors.toList;
import static java.util.stream.Collectors.toSet;
import static service.UsuarioService.ADMIN;

@Path("/api/categorias")
public class CategoriaResource  {

    @GET
    @GZIP
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public List<String> getCategorias() {
        return Arrays.stream(Categoria.values()).map(Categoria::getNome).collect(toList());
    }

    @GET
    @GZIP
    @Path("/{categoria}/estados")
    @RolesAllowed({ADMIN})
    @Produces("application/json")
    public Collection<EstadoDTO> getCategorias(@PathParam("categoria") String categoria) {
        return Tabela.<Tabela>listAll().stream()
                .filter(t -> t.getCategoria().getNome().equals(categoria))
                .map(Tabela::getEstado)
                .map(EstadoDTO::new)
                .collect(toSet());
    }

}
