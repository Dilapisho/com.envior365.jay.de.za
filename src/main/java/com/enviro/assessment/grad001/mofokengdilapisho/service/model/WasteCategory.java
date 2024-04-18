package com.enviro.assessment.grad001.mofokengdilapisho.service.model;

import jakarta.validation.constraints.NotNull;
import lombok.Data;


@Data
public class WasteCategory {

    @NotNull(message = "category cannot be null for this operation")
    private Long id;
    private String displayName;
    private String code;
    private String description;
}
