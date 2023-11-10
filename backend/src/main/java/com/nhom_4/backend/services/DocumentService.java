package com.nhom_4.backend.services;

import com.nhom_4.backend.entites.Document;
import com.nhom_4.backend.repositories.DocumentRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.ParameterMode;
import jakarta.persistence.StoredProcedureParameter;
import jakarta.persistence.StoredProcedureQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DocumentService {
    @Autowired
    private DocumentRepository documentRepository;
    @Autowired
    private EntityManager entityManager;

    public void updateDocument(Document document){
        int index = document.getFilePath().lastIndexOf('.');
        String extension = document.getFilePath().substring(index + 1);
        documentRepository.update_document(document.getId(), document.getTitle(), document.getSummary(), document.getFilePath(), extension, document.getCategory_id(), document.getThumb(), document.getContent());
    }
    public List<Document> getRelatedDocument(Long document_id){
        StoredProcedureQuery query = entityManager.createStoredProcedureQuery("find_related_documents");
        query.registerStoredProcedureParameter("p_document_id", Long.class, ParameterMode.IN);
        query.registerStoredProcedureParameter("o_result", void.class, ParameterMode.REF_CURSOR);
        query.setParameter("p_document_id", document_id);
        query.execute();

        List<Document> documents = query.getResultList();
        return documents;
    }
}
