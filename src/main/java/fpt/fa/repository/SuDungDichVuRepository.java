package fpt.fa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import fpt.fa.entity.SuDungDichVu;
import fpt.fa.entity.SuDungDichVuId;

@Repository
public interface SuDungDichVuRepository extends JpaRepository<SuDungDichVu, SuDungDichVuId> {
    @Query("SELECT sd FROM SuDungDichVu sd JOIN FETCH sd.khachHang kh JOIN FETCH sd.dichVu")
    List<SuDungDichVu> findAllSuDungDichVuWithKhachHang();
}