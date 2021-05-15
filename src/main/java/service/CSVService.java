package service;

import entities.enums.ToCSV;

import javax.enterprise.context.ApplicationScoped;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static java.util.stream.Collectors.toList;

@ApplicationScoped
public class CSVService {

    public static final List<String> CABECALHO_CSV_LOGINS = Arrays.asList("ID",  "DATA", "USUÁRIO", "IP", "LOCALIZAÇÃO", "USER-AGENT");
    public static final List<String> CABECALHO_CSV_COTACOES = Arrays.asList("ID", "DATA", "USUÁRIO", "LINK");
    public static final List<String> CABECALHO_CSV_ALTERACOES = Arrays.asList("ID", "DATA", "USUÁRIO", "TIPO ENTIDADE", "TIPO ALTERAÇÃO", "ID ENTIDADE");

    public String convertToCSV(List<String> cabecalhos, List<? extends ToCSV> entidades) {
        List<String> csv = new ArrayList<>(entidades.size() + 1);
        csv.add(String.join(",", cabecalhos) + "\n");
        csv.addAll(entidades.stream().map(ToCSV::toCSV).collect(toList()));
        return String.join("", csv);
    }

}
