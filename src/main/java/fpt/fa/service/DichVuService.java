package fpt.fa.service;

import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import fpt.fa.entity.DichVu;

public interface DichVuService {
    List<DichVu> getAllDichVu();
    DichVu getDichVuById(String maDV);
    DichVu createDichVu(DichVu dichVu);
    DichVu updateDichVu(DichVu dichVu);
    void deleteDichVu(String maDV);
    Page<DichVu> findAll(Pageable pageable);
    Page<DichVu> findByMaDVContaining(String search, Pageable pageable);
}