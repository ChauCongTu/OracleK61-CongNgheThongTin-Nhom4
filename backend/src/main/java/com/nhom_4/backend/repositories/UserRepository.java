package com.nhom_4.backend.repositories;

import com.nhom_4.backend.entites.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Long> {

    Optional<User> findByLogin(String login);

    @Query(value = "SELECT is_admin(:i_id) FROM dual", nativeQuery = true)
    Integer isAdmin(@Param("i_id") Long userId);
}
