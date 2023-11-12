package com.nhom_4.backend.repositories;

import com.nhom_4.backend.entites.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByLogin(String login);

    @Query(value = "SELECT is_admin(:i_id) FROM dual", nativeQuery = true)
    Integer isAdmin(@Param("i_id") Long userId);

    @Procedure("update_user")
    void update_user(@Param("I_ID") Long id, @Param("I_FIRST_NAME") String firstName, @Param("I_LAST_NAME") String lastName, @Param("I_LOGIN") String login, @Param("I_ROLE") String role);
}
