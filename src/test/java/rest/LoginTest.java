package rest;

import io.quarkus.test.junit.QuarkusTest;
import org.junit.jupiter.api.Test;

import static io.restassured.RestAssured.given;
import static org.junit.jupiter.api.Assertions.assertTrue;

@QuarkusTest
public class LoginTest {

    @Test
    public void testHelloEndpoint() {
        String token = given()
                .header("Authorization", "Basic YWRtaW5AYWRtaW4uY29tOmFkbWlu")
                .when().get("/api/login")
                .then()
                .statusCode(200)
                .extract().asString();

        String tokenTest = given()
                .header("Authorization", "Bearer " + token)
                .when().get("/api/login/test")
                .then()
                .statusCode(200)
                .extract().asString();

        assertTrue(tokenTest.contains("admin@admin.com"));
    }

}
