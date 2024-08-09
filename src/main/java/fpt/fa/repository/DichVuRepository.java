package fpt.fa.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpt.fa.entity.DichVu;

@Repository
public interface DichVuRepository extends JpaRepository<DichVu, String> {
    Page<DichVu> findByMaDVContaining(String maDV, Pageable pageable);
}