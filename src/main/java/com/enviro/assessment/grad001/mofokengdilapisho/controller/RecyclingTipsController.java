package com.enviro.assessment.grad001.mofokengdilapisho.controller;

import com.enviro.assessment.grad001.mofokengdilapisho.service.RecyclingTipsService;
import com.enviro.assessment.grad001.mofokengdilapisho.service.model.RecyclingTips;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/recycling-tips")
public class RecyclingTipsController {
    private final RecyclingTipsService recyclingTipsService;

    public RecyclingTipsController(RecyclingTipsService recyclingTipsService) {
        this.recyclingTipsService = recyclingTipsService;
    }

    @GetMapping()
    public ResponseEntity<List<RecyclingTips>>finAll(){
        List<RecyclingTips> all = this.recyclingTipsService.findAll();
        return  ResponseEntity.ok(all);
    }

    @PutMapping()
    public ResponseEntity<RecyclingTips> updateRecyclingTips(@RequestBody RecyclingTips recyclingTips){
        RecyclingTips updateRecyclingTips = recyclingTipsService.updateRecyclingTips(recyclingTips);
        return ResponseEntity.ok(updateRecyclingTips);

    }

    @GetMapping("/{id}")
    public ResponseEntity<RecyclingTips> findById(@PathVariable Long id) {
        RecyclingTips all = this.recyclingTipsService.findById(id);
        return ResponseEntity.ok(all);
    }
    @PostMapping()
    public ResponseEntity<RecyclingTips> createRecyclingTips(@RequestBody RecyclingTips recyclingTips){
        RecyclingTips createRecyclingTips = recyclingTipsService.createRecyclingTips(recyclingTips);
        return ResponseEntity.ok(createRecyclingTips);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Void>deletedRecyclingTips(@PathVariable("id") Long id){
        recyclingTipsService.deletedRecyclingTips(id);
        return ResponseEntity.ok().build();
    }
}
