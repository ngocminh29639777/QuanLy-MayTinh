package fpt.fa.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import fpt.fa.entity.KhachHang;

@Repository
public interface KhachHangRepository extends JpaRepository<KhachHang, String> {
    Page<KhachHang> findByMaKHContaining(String maKH, Pageable pageable);
    KhachHang findByMaKH(String maKH);
}