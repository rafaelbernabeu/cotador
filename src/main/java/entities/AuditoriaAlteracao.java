package entities;

import entities.enums.TipoAlteracao;
import entities.enums.TipoEntidade;
import entities.enums.ToCSV;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.time.LocalDateTime;

import static service.DateTimeService.DATE_TIME_FORMATTER;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AuditoriaAlteracao extends PanacheEntityBase implements ToCSV {

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

    public String toCSV() {
        return String.format("%s,%s,%s,%s,%s,%s,%n",
                id,
                DATE_TIME_FORMATTER.format(dataHora),
                usuario,
                tipoEntidade.getNome(),
                tipoAlteracao.getNome(),
                idEntidade);
    }

}
