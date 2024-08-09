package fpt.fa.service;

import java.util.List;

import fpt.fa.entity.SuDungMay;
import fpt.fa.entity.SuDungMayId;

public interface SuDungMayService {
    List<SuDungMay> getAllSuDungMay();
    SuDungMay getSuDungMayById(SuDungMayId id);
    SuDungMay createSuDungMay(SuDungMay suDungMay);
    SuDungMay updateSuDungMay(SuDungMay suDungMay);
    void deleteSuDungMay(SuDungMayId id);
}