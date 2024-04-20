package com.enviro.assessment.grad001.mofokengdilapisho.service;

import com.enviro.assessment.grad001.mofokengdilapisho.service.repository.DisposalRepository;
import org.springframework.stereotype.Service;

@Service
public class DisposalGuidelineService {
    private final DisposalRepository disposalRepository;

    public DisposalGuidelineService(DisposalRepository disposalRepository) {
        this.disposalRepository = disposalRepository;
    }

}
