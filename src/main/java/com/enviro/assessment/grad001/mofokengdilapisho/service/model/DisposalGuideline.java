package com.enviro.assessment.grad001.mofokengdilapisho.service.model;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;

@Data
public class DisposalGuideline {
    @NotNull(message = "Id cannot be null for this operation")
    private Long id;

    @NotEmpty(message = "Waste Category cannot be null")
    private String wasteCategoryCode;
    private String displayName;
    private String content;

}
