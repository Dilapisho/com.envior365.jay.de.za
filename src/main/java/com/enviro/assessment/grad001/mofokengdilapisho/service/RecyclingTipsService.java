package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.exception.ApiRequestException;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.RecyclingTipsEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.WasteCategoryEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.RecyclingTips;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.RecyclingRepository;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.WasteRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class RecyclingTipsService {
    private final RecyclingRepository recyclingRepository;
    private final WasteRepository wasteRepository;

    public RecyclingTipsService(RecyclingRepository recyclingRepository, WasteRepository wasteRepository) {
        this.recyclingRepository = recyclingRepository;
        this.wasteRepository = wasteRepository;
    }

    public List<RecyclingTips> findAll(){
        List<RecyclingTipsEntity> recyclingTipsEntities = recyclingRepository.findAll();
        return recyclingTipsEntities.stream()
                .map(this::mapToRecyclingTips)
                .collect(Collectors.toList());

    }

    public RecyclingTips findById(Long id) {
        Optional<RecyclingTipsEntity> recyclingTipsEntity = recyclingRepository.findById(id);
        if (recyclingTipsEntity.isPresent()) {
            return mapToRecyclingTips(recyclingTipsEntity.get());
        } else {
            throw new ApiRequestException("Recycling tips with id " + id + " not found");
        }
    }

    private RecyclingTips mapToRecyclingTips(RecyclingTipsEntity entity) {
        if (entity == null) return null;

        RecyclingTips recyclingTips = new RecyclingTips();
        recyclingTips.setId(entity.getId());
        recyclingTips.setDisplayName(entity.getDisplayName());
        recyclingTips.setContent(entity.getContent());
        recyclingTips.setWasteCategoryCode(entity.getWasteCategory().getCode());

        return recyclingTips;
    }


    public RecyclingTips updateRecyclingTips(RecyclingTips recyclingTips) {
        Optional<RecyclingTipsEntity> optionalRecyclingTipsEntity = recyclingRepository.findById(recyclingTips.getId());

        if(optionalRecyclingTipsEntity.isPresent()){
            RecyclingTipsEntity existingRecyclingEntity = optionalRecyclingTipsEntity.get();

            existingRecyclingEntity.setDisplayName(recyclingTips.getDisplayName());
            existingRecyclingEntity.setContent(recyclingTips.getContent());

            RecyclingTipsEntity saved = recyclingRepository.save(existingRecyclingEntity);
            return mapToRecyclingTips(saved);
        }else {
            throw new ApiRequestException("Recycling Tip with ID " + recyclingTips.getId() + " does not exist.");

        }
    }
    public RecyclingTips createRecyclingTips( RecyclingTips request){
        Optional<RecyclingTipsEntity> existingRecyclingTips = recyclingRepository.findById(request.getId());
        Optional<WasteCategoryEntity> existingWasteCategory = wasteRepository.findByCode(request.getWasteCategoryCode());

        if(existingWasteCategory.isEmpty()){
            throw new ApiRequestException("Waste Category with code " + request.getWasteCategoryCode() + "Not Found");

        }
        if (existingRecyclingTips.isPresent()){
            throw new ApiRequestException("Recycling Tips with ID " + request.getId() + " already exists.");

        }
        RecyclingTipsEntity recyclingTipsEntity = new RecyclingTipsEntity();
        recyclingTipsEntity.setContent(request.getContent());
        recyclingTipsEntity.setDisplayName(request.getDisplayName());
        recyclingTipsEntity.setWasteCategory(existingWasteCategory.get());

        RecyclingTipsEntity saved = recyclingRepository.save(recyclingTipsEntity);
        return mapToRecyclingTips(saved);
    }

    public void deletedRecyclingTips(Long recyclingTipsId){
        if(recyclingRepository.existsById(recyclingTipsId)){
            recyclingRepository.deleteById(recyclingTipsId);
        }else {
            throw new ApiRequestException("Recycling Tip with ID " + recyclingTipsId + " does not exist.");
        }
    }
}

