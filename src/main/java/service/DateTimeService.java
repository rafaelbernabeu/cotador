package service;

import javax.enterprise.context.ApplicationScoped;
import java.time.LocalDateTime;
import java.time.ZoneId;

@ApplicationScoped
public class DateTimeService {

    public LocalDateTime getDataHoraAtual() {
        return LocalDateTime.now(ZoneId.of("America/Sao_Paulo"));
    }

}
