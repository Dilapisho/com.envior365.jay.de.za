package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.service.dto.WasteCategoryCreateRequest;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.WasteCategoryEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.WasteCategory;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.WasteRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class WasteCategoryService {

    private final WasteRepository wasteRepository;

    public WasteCategoryService(WasteRepository wasteRepository) {
        this.wasteRepository = wasteRepository;
    }

    public List<WasteCategory> findAll() {
        List<WasteCategoryEntity> wasteCategoryEntities = wasteRepository.findAll();
        return wasteCategoryEntities.stream()
                .map(this::mapToWasteCategory)
                .collect(Collectors.toList());
    }


    private WasteCategory mapToWasteCategory(WasteCategoryEntity entity) {
        WasteCategory wasteCategory = new WasteCategory();
        wasteCategory.setId(entity.getId());
        wasteCategory.setDisplayName(entity.getDisplayName());
        wasteCategory.setCode(entity.getCode());
        wasteCategory.setDescription(entity.getDescription());
        return wasteCategory;
    }


    public WasteCategory updateWasteCategory(WasteCategory wasteCategory) {
        Optional<WasteCategoryEntity> optionalWasteCategory = wasteRepository.findById(wasteCategory.getId());
        // Check if the entity exists
        if (optionalWasteCategory.isPresent()) {
            WasteCategoryEntity existingWasteCategory = optionalWasteCategory.get();

            existingWasteCategory.setDisplayName(wasteCategory.getDisplayName());
            existingWasteCategory.setCode(wasteCategory.getCode());
            existingWasteCategory.setDescription(wasteCategory.getDescription());
            WasteCategoryEntity saved = wasteRepository.save(existingWasteCategory);
            return mapToWasteCategory(saved);
        } else {
            throw new EntityNotFoundException("Waste category with ID " + wasteCategory.getId() + " does not exist.");

        }
    }


    public WasteCategory createWasteCategory(WasteCategoryCreateRequest request) {
        Optional<WasteCategoryEntity> existingCategory = wasteRepository.findByCode(request.getCode());
        if (existingCategory.isPresent()) {
            throw new DuplicateKeyException("Waste category with code " + request.getCode() + " already exists.");
        } else {
            WasteCategoryEntity wasteCategoryEntity = new WasteCategoryEntity();
            wasteCategoryEntity.setCode(request.getCode());
            wasteCategoryEntity.setDisplayName(request.getDisplayName());
            wasteCategoryEntity.setDescription(request.getDescription());
            WasteCategoryEntity saved = wasteRepository.save(wasteCategoryEntity);
            return mapToWasteCategory(saved);
        }

    }

    public void deleteWasteCategory(Long categoryId) {
        if (wasteRepository.existsById(categoryId)) {
            wasteRepository.deleteById(categoryId);
        } else {
            throw new EntityNotFoundException("Waste category with ID " + categoryId + " does not exist.");
        }
    }
}



