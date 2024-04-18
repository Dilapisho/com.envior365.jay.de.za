package com.enviro.assessment.grad001.mofokengdilapisho.service.dto;

import lombok.Data;

@Data
public class WasteCategoryCreateRequest {
    private String displayName;
    private String code;
    private String description;
}
