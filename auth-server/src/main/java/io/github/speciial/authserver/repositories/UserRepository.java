package io.github.speciial.authserver.repositories;

import io.github.speciial.authserver.entities.AuthUser;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<AuthUser, Long> {

    Optional<AuthUser> findByLogin(String login);

}
