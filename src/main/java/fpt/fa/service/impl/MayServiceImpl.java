package fpt.fa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fpt.fa.entity.May;
import fpt.fa.repository.MayRepository;
import fpt.fa.service.MayService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

@Service
@Transactional
public class MayServiceImpl implements MayService {
    
    @Autowired
    private MayRepository mayRepository;
    
    @Override
    public List<May> getAllMay() {
        return mayRepository.findAll();
    }
    
    @Override
    public May getMayById(String maMay) {
        return mayRepository.findById(maMay).orElse(null);
    }
    
    @Override
    public May createMay(May may) {
        return mayRepository.save(may);
    }
    
    @Override
    public May updateMay(May may) {
        return mayRepository.save(may);
    }
    
    @Override
    public void deleteMay(String maMay) {
        mayRepository.deleteById(maMay);
    }
    
    @Override
    public Page<May> findAll(Pageable pageable) {
        return mayRepository.findAll(pageable);
    }
    
    @Override
    public Page<May> findByMaMayContaining(String search, Pageable pageable) {
        return mayRepository.findByMaMayContaining(search, pageable);
    }
}