package com.nhom_4.backend.controllers;

import com.nhom_4.backend.dtos.DocumentRequest;
import com.nhom_4.backend.entites.Document;
import com.nhom_4.backend.repositories.DocumentRepository;
import com.nhom_4.backend.services.DocumentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@CrossOrigin(origins = "http://localhost:8080", maxAge = 3600)
@RestController
@RequestMapping("/api/document")
public class DocumentController {

    @Autowired
    private final DocumentRepository repository;

    @Autowired
    private DocumentService service;

    public DocumentController(DocumentRepository repository) {
        this.repository = repository;
    }

    // Get all categories
    @GetMapping("/")
    public List<Document> all () {
        return repository.findAll();
    }

    @GetMapping("/{id}")
    public Optional<Document> one (@PathVariable Long id) {
        Optional<Document> document = repository.findById(id);
        document.map(doc -> {
            doc.setViewCount(doc.getViewCount() + 1);
            return repository.save(doc);
        });
        return repository.findById(id);
    }
    @PostMapping(value = "/")
    public Document add (@RequestBody Document document) {
        Document newDocument = new Document();
        int index = document.getFilePath().lastIndexOf('.');
        String extension = document.getFilePath().substring(index + 1);
        newDocument.setType(extension);
        newDocument.setThumb(document.getThumb());
        newDocument.setFilePath(document.getFilePath());
        newDocument.setTitle(document.getTitle());
        newDocument.setSummary(document.getSummary());
        newDocument.setContent(document.getContent());
        newDocument.setUser_id(document.getUser_id());
        newDocument.setCategory_id(document.getCategory_id());
        newDocument.setViewCount(0L);
        newDocument.setDownloadCount(0L);
        newDocument.setIsApproved(1L);
        return repository.save(newDocument);
    }

    @PutMapping(value = "/approve/{id}")
    public Optional<Document> approve (@PathVariable Long id) {
        Optional<Document> document = repository.findById(id);
        document.map(doc -> {
            doc.setIsApproved(1L);
            return repository.save(doc);
        });
        return repository.findById(id);
    }

    @PutMapping(value = "/{id}")
    Optional<Document> update(@RequestBody Document document, @PathVariable Long id) {
        service.updateDocument(document);
        return Optional.of(document);
    }
    @DeleteMapping("/{id}")
    void delete(@PathVariable Long id) {
        repository.delete_document(id);
    }

    @GetMapping("/search")
    public List<Document> search (@RequestParam("s") String string) {
        List<Document> documents = repository.findByTitleContaining(string);
        return documents;
    }

    @GetMapping("/{id}/related")
    public List<Document> related (@PathVariable Long id) {
        List<Document> documents = service.getRelatedDocument(id);
        documents = repository.findRelatedDocument(id);
        return documents;
    }
}
