package service;

import io.quarkus.security.identity.SecurityIdentity;

import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;

@ApplicationScoped
public class SegurancaService {

    @Inject
    SecurityIdentity securityIdentity;

    public String getEmailUsuarioLogado() {
        return securityIdentity.getPrincipal().getName();
    }
}
