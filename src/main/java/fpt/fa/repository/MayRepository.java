package fpt.fa.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpt.fa.entity.May;

@Repository
public interface MayRepository extends JpaRepository<May, String> {
    Page<May> findByMaMayContaining(String maMay, Pageable pageable);
    May findByMaMay(String maMay);
}