package com.nhom_4.backend.repositories;

import com.nhom_4.backend.entites.Document;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DocumentRepository extends JpaRepository<Document, Long> {
    @Query("SELECT d FROM Document d WHERE d.title LIKE %?1%")
    List<Document> findByTitleContaining(String query);

    @Query(value = "SELECT d.* FROM Documents d WHERE d.id <> ?1 AND d.category_id = (SELECT d2.category_id FROM Documents d2 WHERE d2.id = ?1)", nativeQuery = true)
    List<Document> findRelatedDocument(Long id);

    @Procedure(name = "update_document")
    void update_document(@Param("v_id") Long id, @Param("v_title") String title, @Param("v_summary") String summary, @Param("v_file_path") String filePath, @Param("v_type") String type, @Param("v_category_id") Long categoryId, @Param("v_thumb") String thumb, @Param("v_content") String content);
}
