package com.enviro.assessment.grad001.mofokengdilapisho.service.repository;

import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.DisposalGuideLineEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DisposalRepository extends JpaRepository<DisposalGuideLineEntity, Long> {

}
