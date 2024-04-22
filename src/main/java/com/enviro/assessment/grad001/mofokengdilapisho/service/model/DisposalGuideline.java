package com.enviro.assessment.grad001.mofokengdilapisho.service.model;

import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class DisposalGuideline {
    @NotNull(message = "GuideLine cannot be null for this operation")
    private Long id;
    private String wasteCategoryCode;
    private String displayName;
    private String content;

}
