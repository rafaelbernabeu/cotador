package rest.quarkusnative;

import io.quarkus.test.junit.NativeImageTest;
import rest.LoginTest;

@NativeImageTest
public class NativeLoginTest extends LoginTest {

    // Execute the same tests but in native mode.
}
