package com.nhom_4.backend.repositories;

import com.nhom_4.backend.entites.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Long> {
    @Query("SELECT r FROM Review r WHERE r.document_id = ?1 ORDER BY r.created_at DESC")
    List<Review> get_review_list(Long documentId);
}