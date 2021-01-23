package entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Data
@Entity
public class Laboratorio {

    @Id
    @GeneratedValue
    Long id;



}
