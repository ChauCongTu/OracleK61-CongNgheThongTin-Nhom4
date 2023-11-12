package com.nhom_4.backend.services;

import com.nhom_4.backend.entites.Document;
import com.nhom_4.backend.entites.Review;
import com.nhom_4.backend.repositories.ReviewRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.ParameterMode;
import jakarta.persistence.StoredProcedureQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlParameter;
import org.springframework.stereotype.Service;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class ReviewService {
    @Autowired
    private ReviewRepository reviewRepository;
    @Autowired
    private EntityManager entityManager;

    public List<Review> callGetReview(Long documentId) {
        return reviewRepository.get_review_list(documentId);
    }

}
