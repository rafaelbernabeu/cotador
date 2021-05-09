package dto;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class ConsultaAuditoriaDTO {

    private LocalDateTime dataInicio;
    private LocalDateTime dataFim;

}
