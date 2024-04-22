package com.enviro.assessment.grad001.mofokengdilapisho.service.repository;

import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.RecyclingTipsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RecyclingRepository extends JpaRepository<RecyclingTipsEntity, Long> {
}
