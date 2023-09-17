package com.nhom_4.backend.controllers;

import com.nhom_4.backend.entites.Collection;
import com.nhom_4.backend.dtos.CollectionRequest;
import com.nhom_4.backend.repositories.CollectionRepository;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/collection")
public class CollectionController {

    private final CollectionRepository collectionRepository;

    public CollectionController(CollectionRepository collectionRepository) {
        this.collectionRepository = collectionRepository;
    }

    @GetMapping("/")
    public List<Collection> all() { return collectionRepository.findAll(); }

    @PostMapping(value = "/")
    public ResponseEntity<Collection> createCollection(@RequestBody Collection collectionRequest) {
        Collection collection = new Collection();
        collection.setName(collectionRequest.getName());

        collection.setThumb(collectionRequest.getThumb());

        // Lưu collection vào cơ sở dữ liệu
        collectionRepository.save(collection);

        return ResponseEntity.ok(collection);
    }

    @GetMapping("/{id}")
    public Optional<Collection> one(@PathVariable Long id) {
        return collectionRepository.findById(id);
    }

    @PutMapping(value = "/{id}")
    public Optional<Collection> update(@RequestBody Collection collectionRequest, @PathVariable Long id) {
         return collectionRepository.findById(id)
                .map(collection -> {
                    collection.setName(collectionRequest.getName());
                    collection.setThumb(collectionRequest.getThumb());
                    return collectionRepository.save(collection);
                });
    }

    @DeleteMapping("/{id}")
    void delete(@PathVariable Long id) {
        collectionRepository.deleteById(id);
    }
}
