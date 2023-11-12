package com.nhom_4.backend.controllers;

import com.nhom_4.backend.dtos.ReviewRequest;
import com.nhom_4.backend.entites.Review;
import com.nhom_4.backend.repositories.ReviewRepository;
import com.nhom_4.backend.services.ReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/review")
public class ReviewController {

    private final ReviewRepository reviewRepository;

    @Autowired
    private ReviewService service;

    public ReviewController(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    @GetMapping("/")
    public List<Review> getReviewOfDocument (@RequestParam("doc") Long document_id) {
        return service.callGetReview(document_id);
    }

    @PostMapping("/{document_id}")
    public Review addComment(@RequestBody ReviewRequest request, @PathVariable Long document_id){
        Review review = new Review();
        review.setDocument_id(document_id);
        review.setName(request.getName());
        review.setContent(request.getContent());
        return reviewRepository.save(review);
    }
    @PutMapping("/{id}")
    public Review editComment(@RequestBody ReviewRequest request, @PathVariable Long id){
        Review review = reviewRepository.findById(id).get();
        review.setName(request.getName());
        review.setContent(request.getContent());
        return reviewRepository.save(review);
    }
    @DeleteMapping("/{id}")
    public void delete (@PathVariable Long id) {
        reviewRepository.deleteById(id);
    }
}
