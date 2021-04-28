package rest;

import dto.GeolocationDTO;
import io.quarkus.test.junit.QuarkusTest;
import io.restassured.http.ContentType;
import org.jose4j.base64url.Base64;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static java.nio.charset.StandardCharsets.UTF_8;
import static org.junit.jupiter.api.Assertions.assertTrue;

@QuarkusTest
public class LoginTest {

    @Test
    public void testHelloEndpoint() {
        String login = "admin@cotador.com:admin";

        String token = given()
                .header("Authorization", "Basic " + Base64.encode(login.getBytes(UTF_8)))
                .contentType(ContentType.JSON)
                .body(new GeolocationDTO())
                .when().post("/api/login")
                .then()
                .statusCode(200)
                .extract().asString().split(":")[1].replaceAll("\"", "");

        String tokenTest = given()
                .header("Authorization", "Bearer " + token)
                .when().get("/api/login/verify")
                .then()
                .statusCode(200)
                .extract().asString();

        assertTrue(tokenTest.contains("admin@cotador.com"));
    }

}
