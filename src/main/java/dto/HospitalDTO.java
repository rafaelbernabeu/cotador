package dto;

import entities.Hospital;
import lombok.Data;

@Data
public class HospitalDTO {

    public HospitalDTO(Hospital hospital) {
        this.nome = hospital.getNome();
        this.local = hospital.getLocal();
    }

    private String nome;
    private String local;

}
