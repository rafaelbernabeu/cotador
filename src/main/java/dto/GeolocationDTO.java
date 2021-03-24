package dto;

import lombok.Data;

@Data
public class GeolocationDTO {

    private Double accuracy;
    private Double altitude;
    private Double altitudeAccuracy;
    private Double heading;
    private Double latitude;
    private Double longitude;
    private Double speed;

    @Override
    public String toString() {
        return "{" +
            "\"accuracy\":" + accuracy +
            ", \"altitude\":" + altitude +
            ", \"altitudeAccuracy\":" + altitudeAccuracy +
            ", \"heading\":" + heading +
            ", \"latitude\":" + latitude +
            ", \"longitude\":" + longitude +
            ", \"speed\":" + speed +
        '}';
    }
}
