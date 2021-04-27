package rest.exceptions;

import javax.annotation.Priority;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;

@Provider
@Priority(2)
public class ExceptionsMapper implements ExceptionMapper<Exception> {

    @Override
    public Response toResponse(Exception exception) {
        Throwable t = exception.getCause();

        while (true) {
            if (t.getCause() == null) {
                break;
            }
            t = t.getCause();
        }

        return Response.serverError()
                .entity(t.getMessage())
                .build();
    }
}
