package rest;

import dto.LaboratorioDTO;
import entities.Laboratorio;
import rest.interfaces.ILaboratorioResource;

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
import java.util.List;

import static java.util.stream.Collectors.toList;

@Path("/api/laboratorios")
public class LaboratorioResource {

    @Inject
    ILaboratorioResource laboratorioResource;

    @GET
    @Path("{id}")
    @RolesAllowed("admin")
    @Produces("application/json")
    public LaboratorioDTO get(@PathParam("id") Long id) {
        return new LaboratorioDTO(laboratorioResource.get(id));
    }

    @GET
    @RolesAllowed("admin")
    @Produces("application/json")
    public List<LaboratorioDTO> list() {
        return Laboratorio.<Laboratorio>listAll().stream().map(LaboratorioDTO::new).collect(toList());
    }

    @POST
    @Transactional
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public LaboratorioDTO add(LaboratorioDTO laboratorio) {
        return new LaboratorioDTO(laboratorioResource.add(new Laboratorio(laboratorio)));
    }

    @PUT
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    @Consumes("application/json")
    @Produces("application/json")
    public LaboratorioDTO update(@PathParam("id") Long id, LaboratorioDTO laboratorio) {
        return new LaboratorioDTO(laboratorioResource.update(id, new Laboratorio(laboratorio)));
    }

    @DELETE
    @Transactional
    @Path("{id}")
    @RolesAllowed("admin")
    public boolean delete(@PathParam("id") Long id) {
        return laboratorioResource.delete(id);
    }

}
