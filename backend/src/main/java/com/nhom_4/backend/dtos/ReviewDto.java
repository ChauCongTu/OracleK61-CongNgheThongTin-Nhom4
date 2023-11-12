package com.nhom_4.backend.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class ReviewDto {
    private Long id;
    private Long documentId;
    private String author;
    private String content;
    private Date createdAt;
}
