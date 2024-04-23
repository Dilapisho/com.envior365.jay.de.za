package com.enviro.assessment.grad001.mofokengdilapisho.controller;

import com.enviro.assessment.grad001.mofokengdilapisho.service.DisposalGuidelineService;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.DisposalGuideline;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/{id}")
    public ResponseEntity<DisposalGuideline> findById(@PathVariable Long id) {
        DisposalGuideline all = this.disposalGuidelineService.findById(id);
        return ResponseEntity.ok(all);
    }
    @PutMapping()
    public ResponseEntity<DisposalGuideline> updateDisposalGuideLine(@RequestBody DisposalGuideline disposalGuideline){
        DisposalGuideline updateDisposalGuideLine = disposalGuidelineService.updateDisposalGuideLines(disposalGuideline);
        return ResponseEntity.ok(updateDisposalGuideLine);
    }

    @PostMapping()
    public ResponseEntity<DisposalGuideline> createDisposalGuideLine(@RequestBody DisposalGuideline disposalGuideline){
        DisposalGuideline createDisposalGuideLine = disposalGuidelineService.createDisposalGuideLine(disposalGuideline);
        return ResponseEntity.ok(createDisposalGuideLine);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void>deletedDisposalGuideLine(@PathVariable("id") Long id){
        disposalGuidelineService.deletedDisposalGuideLine(id);
        return ResponseEntity.ok().build();
    }




}
