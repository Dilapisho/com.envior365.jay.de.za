package com.enviro.assessment.grad001.mofokengdilapisho.service.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name ="recycling_tips")
public class RecyclingTipsEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;


    @ManyToOne
    @JoinColumn(name="waste_category_code", nullable=false)
    private WasteCategoryEntity wasteCategory;

    @Column(name = "display_name")
    private String displayName;

    @Column(name = "content")
    private String content;

}
