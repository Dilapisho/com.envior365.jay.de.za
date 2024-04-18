package com.enviro.assessment.grad001.mofokengdilapisho.controller;

import com.enviro.assessment.grad001.mofokengdilapisho.service.WasteCategoryService;
import com.enviro.assessment.grad001.mofokengdilapisho.service.dto.WasteCategoryCreateRequest;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.WasteCategory;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/waste-categories")
public class WasteCategoryController {

    private final WasteCategoryService wasteCategoryService;

    public WasteCategoryController(WasteCategoryService wasteCategoryService) {
        this.wasteCategoryService = wasteCategoryService;
    }

    @GetMapping()
    public ResponseEntity<List<WasteCategory>> getAllCategories() {
        List<WasteCategory> all = this.wasteCategoryService.findAll();
        return ResponseEntity.ok(all);
    }


    @PutMapping
    public ResponseEntity<WasteCategory> updateCategory(@RequestBody WasteCategory category) {
        WasteCategory updatedCategory = wasteCategoryService.updateWasteCategory(category);
        return ResponseEntity.ok(updatedCategory);
    }


    @PostMapping()
    public ResponseEntity<WasteCategory> createCategory(@RequestBody WasteCategoryCreateRequest category) {
        WasteCategory createdCategory = wasteCategoryService.createWasteCategory(category);
        return ResponseEntity.ok(createdCategory);

    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCategory(@PathVariable("id") Long id) {
            wasteCategoryService.deleteWasteCategory(id);
            return ResponseEntity.ok().build();
        }

}

