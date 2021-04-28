package rest.exceptions;

import lombok.extern.slf4j.Slf4j;

import javax.annotation.Priority;
import javax.ws.rs.core.Response;
import javax.ws.rs.ext.ExceptionMapper;
import javax.ws.rs.ext.Provider;

@Slf4j
@Provider
@Priority(1)
public class ExceptionsMapper implements ExceptionMapper<Exception> {

    @Override
    public Response toResponse(Exception exception) {
        log.error(exception.getMessage(), exception);
        Throwable t = exception;

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
