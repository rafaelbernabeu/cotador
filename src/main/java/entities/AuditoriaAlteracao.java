package entities;

import entities.enums.TipoAlteracao;
import entities.enums.TipoEntidade;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AuditoriaAlteracao extends PanacheEntityBase {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String usuario;
    private LocalDateTime dataHora;

    private Long idEntidade;

    @Enumerated(EnumType.ORDINAL)
    private TipoEntidade tipoEntidade;

    @Enumerated(EnumType.ORDINAL)
    private TipoAlteracao tipoAlteracao;

}
