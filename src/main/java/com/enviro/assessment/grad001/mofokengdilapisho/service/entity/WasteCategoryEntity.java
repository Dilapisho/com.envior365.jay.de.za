package com.enviro.assessment.grad001.mofokengdilapisho.service.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "waste_category")
public class WasteCategoryEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", updatable = false, nullable = false)
    private Long id;
    @Column(name = "display_name")
    private String displayName;
    @Column(name = "code")
    private String code;
    @Column(name = "description")
    private String description;


}
