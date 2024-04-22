package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.DisposalGuideLineEntity;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.DisposalGuideline;
import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.DisposalRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class DisposalGuidelineService {
    private final DisposalRepository disposalRepository;

    public DisposalGuidelineService(DisposalRepository disposalRepository) {
        this.disposalRepository = disposalRepository;
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
}
