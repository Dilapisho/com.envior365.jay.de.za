package com.enviro.assessment.grad001.mofokengdilapisho.service.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.util.Set;

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
    @Column(name = "code", unique = true)
    private String code;
    @Column(name = "description")
    private String description;
    @OneToMany(mappedBy="wasteCategory")
    private Set<DisposalGuideLineEntity> disposalGuidelines;


}
