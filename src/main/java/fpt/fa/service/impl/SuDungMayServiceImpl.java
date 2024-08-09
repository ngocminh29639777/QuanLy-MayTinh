package fpt.fa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fpt.fa.entity.SuDungMay;
import fpt.fa.entity.SuDungMayId;
import fpt.fa.repository.SuDungMayRepository;
import fpt.fa.service.SuDungMayService;

@Service
@Transactional
public class SuDungMayServiceImpl implements SuDungMayService {
    
    @Autowired
    private SuDungMayRepository suDungMayRepository;
    
    @Override
    public List<SuDungMay> getAllSuDungMay() {
        return suDungMayRepository.findAllSuDungMayWithKhachHang();
    }
    
    @Override
    public SuDungMay getSuDungMayById(SuDungMayId id) {
        return suDungMayRepository.findById(id).orElse(null);
    }
    
    @Override
    public SuDungMay createSuDungMay(SuDungMay suDungMay) {
        return suDungMayRepository.save(suDungMay);
    }
    
    @Override
    public SuDungMay updateSuDungMay(SuDungMay suDungMay) {
        return suDungMayRepository.save(suDungMay);
    }
    
    @Override
    public void deleteSuDungMay(SuDungMayId id) {
        suDungMayRepository.deleteById(id);
    }
}