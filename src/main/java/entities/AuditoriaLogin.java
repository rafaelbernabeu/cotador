package entities;

import entities.enums.ToCSV;
import io.quarkus.hibernate.orm.panache.PanacheEntityBase;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.time.LocalDateTime;

import static service.DateTimeService.DATE_TIME_FORMATTER;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class AuditoriaLogin extends PanacheEntityBase implements ToCSV {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String ip;
    private String usuario;
    private Double latitude;
    private Double longitude;
    private String userAgent;
    private LocalDateTime dataHora;

    public String toCSV() {
        return String.format("%s,%s,%s,%s,\"%s\",\"%s\",%n",
                id,
                DATE_TIME_FORMATTER.format(dataHora),
                usuario,
                ip,
                "https://www.google.com.br/maps/search/" + latitude + ',' + longitude,
                userAgent);
    }
}
