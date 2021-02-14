package dto;

import entities.Role;
import entities.Usuario;
import lombok.Data;

import java.util.List;

@Data
public class UsuarioDTO {

    private Long id;
    private String nome;
    private String email;
    private List<Role> roles;

    public UsuarioDTO(Usuario usuario) {
        this.id = usuario.getId();
        this.nome = usuario.getNome();
        this.email = usuario.getEmail();
        this.roles = usuario.getRoles();
    }
}
