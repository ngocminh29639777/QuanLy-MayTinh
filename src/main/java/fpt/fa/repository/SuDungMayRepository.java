package fpt.fa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import fpt.fa.entity.SuDungMay;
import fpt.fa.entity.SuDungMayId;

@Repository
public interface SuDungMayRepository extends JpaRepository<SuDungMay, SuDungMayId> {
    @Query("SELECT sm FROM SuDungMay sm JOIN FETCH sm.khachHang kh JOIN FETCH sm.may")
    List<SuDungMay> findAllSuDungMayWithKhachHang();
}