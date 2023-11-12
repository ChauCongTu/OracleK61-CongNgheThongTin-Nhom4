package com.nhom_4.backend.repositories;

import com.nhom_4.backend.entites.Collection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Objects;

@Repository
public interface CollectionRepository extends JpaRepository<Collection, Long> {

    @Procedure(name = "delete_collection")
    public void delete_collection(@Param("p_id") Long id);

}
