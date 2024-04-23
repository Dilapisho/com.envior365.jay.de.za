package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.exception.ApiRequestException;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.DisposalGuideLineEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.WasteCategoryEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.DisposalGuideline;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.DisposalRepository;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.WasteRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;


@Service
public class DisposalGuidelineService {
    private final DisposalRepository disposalRepository;
    private final WasteRepository wasteRepository;

    public DisposalGuidelineService(DisposalRepository disposalRepository, WasteRepository wasteRepository) {
        this.disposalRepository = disposalRepository;
        this.wasteRepository = wasteRepository;
    }

    public DisposalGuideline updateDisposalGuideLines(DisposalGuideline disposalGuideline) {
        Optional<DisposalGuideLineEntity> optionalDisposalGuideLineEntity = disposalRepository.findById(disposalGuideline.getId());

        if (optionalDisposalGuideLineEntity.isPresent()) {
            DisposalGuideLineEntity existingDisposalGuideLine = optionalDisposalGuideLineEntity.get();

            existingDisposalGuideLine.setDisplayName(disposalGuideline.getDisplayName());
            existingDisposalGuideLine.setContent(disposalGuideline.getContent());

            DisposalGuideLineEntity saved = disposalRepository.save(existingDisposalGuideLine);
            return mapToDisposalGuideLine(saved);
        } else {
            throw new ApiRequestException("Disposal GuideLine with ID" + disposalGuideline.getId() + "does not exist.");
        }
    }

    public DisposalGuideline findById(Long disposalId) {
        Optional<DisposalGuideLineEntity> existingDisposalGuideLine = disposalRepository.findById(disposalId);
        if (existingDisposalGuideLine.isPresent()) {
            DisposalGuideLineEntity disposalGuideLine = existingDisposalGuideLine.get();
            return mapToDisposalGuideLine(disposalGuideLine);

        } else {
            throw new ApiRequestException("Disposal Guideline with ID " + disposalId + " does not exist.");
        }
    }


    public List<DisposalGuideline> findAll(){
        List<DisposalGuideLineEntity> disposalGuidelinesEntities = disposalRepository.findAll();
        return disposalGuidelinesEntities.stream()
                .map(this::mapToDisposalGuideLine)
                .collect(Collectors.toList());

    }

    private DisposalGuideline mapToDisposalGuideLine(DisposalGuideLineEntity entity) {

        if (entity == null) {
            return null;
        }

        DisposalGuideline disposalGuideline = new DisposalGuideline();
        disposalGuideline.setId(entity.getId());
        disposalGuideline.setDisplayName(entity.getDisplayName());
        disposalGuideline.setContent(entity.getContent());
        disposalGuideline.setWasteCategoryCode(entity.getWasteCategory().getCode());

        return disposalGuideline;
    }

    public DisposalGuideline createDisposalGuideLine(DisposalGuideline request) {
        Optional<DisposalGuideLineEntity> existingDisposalGuideLine = disposalRepository.findById(request.getId());
        Optional<WasteCategoryEntity> existingWasteCategory = wasteRepository.findByCode(request.getWasteCategoryCode());

        if (existingWasteCategory.isEmpty()) {
            throw new ApiRequestException("Waste Category with code " + request.getWasteCategoryCode() + "Not Found");
        }
        if (existingDisposalGuideLine.isPresent()) {
            throw new ApiRequestException("Disposal GuideLine with ID " + request.getId() + " already exists.");
        }

        DisposalGuideLineEntity disposalGuideLineEntity = new DisposalGuideLineEntity();
        disposalGuideLineEntity.setContent(request.getContent());
        disposalGuideLineEntity.setDisplayName(request.getDisplayName());
        disposalGuideLineEntity.setWasteCategory(existingWasteCategory.get());
        DisposalGuideLineEntity saved = disposalRepository.save(disposalGuideLineEntity);
        return mapToDisposalGuideLine(saved);

    }
    public void deletedDisposalGuideLine(Long disposalId){
        if(disposalRepository.existsById(disposalId)){
            disposalRepository.deleteById(disposalId);
        } else{
            throw new ApiRequestException("Disposal Guideline with ID " + disposalId + " does not exist.");
        }
    }


}
