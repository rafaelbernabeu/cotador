package rest.quarkusnative;

import io.quarkus.test.junit.NativeImageTest;
import org.junit.jupiter.api.Disabled;
import rest.LoginTest;

@Disabled
@NativeImageTest
public class NativeLoginTest extends LoginTest {

    // Execute the same tests but in native mode.
}
