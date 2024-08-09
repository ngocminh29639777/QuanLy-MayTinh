package fpt.fa.service;

import java.util.List;

import fpt.fa.entity.SuDungDichVu;
import fpt.fa.entity.SuDungDichVuId;

public interface SuDungDichVuService {
    List<SuDungDichVu> getAllSuDungDichVu();
    SuDungDichVu getSuDungDichVuById(SuDungDichVuId id);
    SuDungDichVu createSuDungDichVu(SuDungDichVu suDungDichVu);
    SuDungDichVu updateSuDungDichVu(SuDungDichVu suDungDichVu);
    void deleteSuDungDichVu(SuDungDichVuId id);
}