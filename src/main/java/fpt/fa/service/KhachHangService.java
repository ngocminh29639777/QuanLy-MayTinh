package fpt.fa.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import fpt.fa.entity.KhachHang;

public interface KhachHangService {
    List<KhachHang> getAllKhachHang();
    KhachHang getKhachHangById(String maKH);
    KhachHang createKhachHang(KhachHang khachHang);
    KhachHang updateKhachHang(KhachHang khachHang);
    void deleteKhachHang(String maKH);
    Page<KhachHang> findAll(Pageable pageable);
    Page<KhachHang> findByMaKHContaining(String search, Pageable pageable);
}