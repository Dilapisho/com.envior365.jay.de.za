package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.DisposalGuideLineEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.WasteCategoryEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.DisposalGuideline;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.DisposalRepository;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.WasteRepository;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
public class DisposalGuidelineService {
    private final DisposalRepository disposalRepository;
    private final WasteRepository wasteRepository;
//    add waste repo

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
            throw new EntityNotFoundException("Disposal GuideLine with ID" + disposalGuideline.getId() + "does not exist.");

        }
    }

    public List<DisposalGuideline> findAll(){
        List<DisposalGuideLineEntity> disposalGuidelinesEntities = disposalRepository.findAll();
        return disposalGuidelinesEntities.stream()
                .map(this::mapToDisposalGuideLine)
                .collect(Collectors.toList());

    }

    private DisposalGuideline mapToDisposalGuideLine(DisposalGuideLineEntity entity) {
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
        //        check in waste repo if there is a category with the code provided in the request
        //        if present,add it, if not handle with an exception

        if (existingWasteCategory.isEmpty()) {
            throw new EntityNotFoundException("Waste Category with code " + request.getWasteCategoryCode() + "Not Found");
        }
        if (existingDisposalGuideLine.isPresent()) {
            throw new DuplicateKeyException("Disposal GuideLine with ID " + request.getId() + " already exists.");
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
            throw  new EntityNotFoundException("Disposal Guideline with ID " + disposalId + " does not exist." );
        }
    }

}
