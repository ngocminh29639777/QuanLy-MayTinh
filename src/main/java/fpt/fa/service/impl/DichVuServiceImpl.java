package fpt.fa.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import fpt.fa.entity.DichVu;
import fpt.fa.repository.DichVuRepository;
import fpt.fa.service.DichVuService;

@Service
@Transactional
public class DichVuServiceImpl implements DichVuService {
    
    @Autowired
    private DichVuRepository dichVuRepository;
    
    @Override
    public List<DichVu> getAllDichVu() {
        return dichVuRepository.findAll();
    }
    
    @Override
    public DichVu getDichVuById(String maDV) {
        return dichVuRepository.findById(maDV).orElse(null);
    }
    
    @Override
    public DichVu createDichVu(DichVu dichVu) {
        return dichVuRepository.save(dichVu);
    }
    
    @Override
    public DichVu updateDichVu(DichVu dichVu) {
        return dichVuRepository.save(dichVu);
    }
    
    @Override
    public void deleteDichVu(String maDV) {
        dichVuRepository.deleteById(maDV);
    }
    
    @Override
    public Page<DichVu> findAll(Pageable pageable) {
        return dichVuRepository.findAll(pageable);
    }
    
    @Override
    public Page<DichVu> findByMaDVContaining(String search, Pageable pageable) {
        return dichVuRepository.findByMaDVContaining(search, pageable);
    }
}