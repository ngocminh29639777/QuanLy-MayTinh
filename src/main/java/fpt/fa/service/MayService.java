package fpt.fa.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import fpt.fa.entity.May;

public interface MayService {
    List<May> getAllMay();
    May getMayById(String maMay);
    May createMay(May may);
    May updateMay(May may);
    void deleteMay(String maMay);
    Page<May> findAll(Pageable pageable);
    Page<May> findByMaMayContaining(String search, Pageable pageable);
}