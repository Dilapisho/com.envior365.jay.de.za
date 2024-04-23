package com.enviro.assessment.grad001.mofokengdilapisho.service.model;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import lombok.Data;


@Data
public class WasteCategory {

    @NotNull(message = "id cannot be null")
    private Long id;
    private String displayName;
    @NotEmpty(message = "waste category code cannot be null or empty")
    private String code;
    private String description;
}
