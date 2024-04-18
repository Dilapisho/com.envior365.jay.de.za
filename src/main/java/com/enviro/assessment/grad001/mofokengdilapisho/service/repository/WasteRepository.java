package com.enviro.assessment.grad001.mofokengdilapisho.service.repository;

import com.enviro.assessment.grad001.mofokengdilapisho.service.entity.WasteCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.Optional;
import java.util.UUID;


@Repository
public interface WasteRepository extends JpaRepository<WasteCategoryEntity, Long> {

    @Query("select e from WasteCategoryEntity e where e.code = :code")
    Optional<WasteCategoryEntity> findByCode(@Param("code") String code);
}