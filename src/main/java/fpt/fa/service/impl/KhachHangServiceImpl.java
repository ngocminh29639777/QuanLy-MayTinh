package fpt.fa.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fpt.fa.entity.KhachHang;
import fpt.fa.repository.KhachHangRepository;
import fpt.fa.service.KhachHangService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

@Service
@Transactional
public class KhachHangServiceImpl implements KhachHangService {
    
    @Autowired
    private KhachHangRepository khachHangRepository;
    
    @Override
    public List<KhachHang> getAllKhachHang() {
        return khachHangRepository.findAll();
    }
    
    @Override
    public KhachHang getKhachHangById(String maKH) {
        return khachHangRepository.findById(maKH).orElse(null);
    }
    
    @Override
    public KhachHang createKhachHang(KhachHang khachHang) {
        return khachHangRepository.save(khachHang);
    }
    
    @Override
    public KhachHang updateKhachHang(KhachHang khachHang) {
        return khachHangRepository.save(khachHang);
    }
    
    @Override
    public void deleteKhachHang(String maKH) {
        khachHangRepository.deleteById(maKH);
    }
    
    @Override
    public Page<KhachHang> findAll(Pageable pageable) {
        return khachHangRepository.findAll(pageable);
    }
    
    @Override
    public Page<KhachHang> findByMaKHContaining(String search, Pageable pageable) {
        return khachHangRepository.findByMaKHContaining(search, pageable);
    }
}