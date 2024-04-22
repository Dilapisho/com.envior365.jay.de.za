package com.enviro.assessment.grad001.mofokengdilapisho.controller;

import com.enviro.assessment.grad001.mofokengdilapisho.service.DisposalGuidelineService;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.DisposalGuideline;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/disposal-guides")
public class DisposalGuidelineController {
    private final DisposalGuidelineService disposalGuidelineService;

    public DisposalGuidelineController(DisposalGuidelineService disposalGuidelineService) {
        this.disposalGuidelineService = disposalGuidelineService;
    }

    @GetMapping()
    public ResponseEntity<List<DisposalGuideline>> findAll(){
        List<DisposalGuideline> all = this.disposalGuidelineService.findAll();
        return ResponseEntity.ok(all);

    }
}
