package service;

import javax.enterprise.context.ApplicationScoped;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;

@ApplicationScoped
public class DateTimeService {

    private static final int N_23 = 23;
    private static final int N_59 = 59;
    private static final int N_999999 = 999999;

    public static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("dd/MM/yyyy hh:mm:ss");

    public LocalDateTime getDataHoraAtual() {
        return LocalDateTime.now(ZoneId.of("America/Sao_Paulo"));
    }

    public static LocalDateTime getDataNoUltimoSegundoDoDia(LocalDateTime dataInicio) {
        return dataInicio.withHour(N_23).withMinute(N_59).withSecond(N_59).withNano(N_999999);
    }

}
