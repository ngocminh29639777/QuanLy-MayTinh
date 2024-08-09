package fpt.fa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fpt.fa.entity.SuDungDichVu;
import fpt.fa.entity.SuDungDichVuId;
import fpt.fa.repository.SuDungDichVuRepository;
import fpt.fa.service.SuDungDichVuService;

@Service
@Transactional
public class SuDungDichVuServiceImpl implements SuDungDichVuService {
    
    @Autowired
    private SuDungDichVuRepository suDungDichVuRepository;
    
    @Override
    public List<SuDungDichVu> getAllSuDungDichVu() {
        return suDungDichVuRepository.findAllSuDungDichVuWithKhachHang();
    }
    
    @Override
    public SuDungDichVu getSuDungDichVuById(SuDungDichVuId id) {
        return suDungDichVuRepository.findById(id).orElse(null);
    }
    
    @Override
    public SuDungDichVu createSuDungDichVu(SuDungDichVu suDungDichVu) {
        return suDungDichVuRepository.save(suDungDichVu);
    }
    
    @Override
    public SuDungDichVu updateSuDungDichVu(SuDungDichVu suDungDichVu) {
        return suDungDichVuRepository.save(suDungDichVu);
    }
    
    @Override
    public void deleteSuDungDichVu(SuDungDichVuId id) {
        suDungDichVuRepository.deleteById(id);
    }
}