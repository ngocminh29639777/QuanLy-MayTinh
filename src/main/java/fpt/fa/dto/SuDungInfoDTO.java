package fpt.fa.dto;

import java.time.LocalDate;
import java.time.LocalTime;

public class SuDungInfoDTO {
    private String maKH;
    private String tenKH;
    private String maMay;
    private String viTriMay;
    private String trangThaiMay;
    private LocalDate ngayBatDauSuDungMay;
    private LocalTime gioBatDauSuDungMay;
    private int thoiGianSuDungMay;
    private String maDV;
    private LocalDate ngaySuDungDV;
    private LocalTime gioSuDungDV;
    private int soLuong;
    private double tongTien;
    private double donGia;

    // Getters and Setters
    public String getMaKH() {
        return maKH;
    }

    public void setMaKH(String maKH) {
        this.maKH = maKH;
    }

    public String getTenKH() {
        return tenKH;
    }

    public void setTenKH(String tenKH) {
        this.tenKH = tenKH;
    }

    public String getMaMay() {
        return maMay;
    }

    public void setMaMay(String maMay) {
        this.maMay = maMay;
    }

    public String getViTriMay() {
        return viTriMay;
    }

    public void setViTriMay(String viTriMay) {
        this.viTriMay = viTriMay;
    }

    public String getTrangThaiMay() {
        return trangThaiMay;
    }

    public void setTrangThaiMay(String trangThaiMay) {
        this.trangThaiMay = trangThaiMay;
    }

    public LocalDate getNgayBatDauSuDungMay() {
        return ngayBatDauSuDungMay;
    }

    public void setNgayBatDauSuDungMay(LocalDate ngayBatDauSuDungMay) {
        this.ngayBatDauSuDungMay = ngayBatDauSuDungMay;
    }

    public LocalTime getGioBatDauSuDungMay() {
        return gioBatDauSuDungMay;
    }

    public void setGioBatDauSuDungMay(LocalTime gioBatDauSuDungMay) {
        this.gioBatDauSuDungMay = gioBatDauSuDungMay;
    }

    public int getThoiGianSuDungMay() {
        return thoiGianSuDungMay;
    }

    public void setThoiGianSuDungMay(int thoiGianSuDungMay) {
        this.thoiGianSuDungMay = thoiGianSuDungMay;
    }

    public String getMaDV() {
        return maDV;
    }

    public void setMaDV(String maDV) {
        this.maDV = maDV;
    }

    public LocalDate getNgaySuDungDV() {
        return ngaySuDungDV;
    }

    public void setNgaySuDungDV(LocalDate ngaySuDungDV) {
        this.ngaySuDungDV = ngaySuDungDV;
    }

    public LocalTime getGioSuDungDV() {
        return gioSuDungDV;
    }

    public void setGioSuDungDV(LocalTime gioSuDungDV) {
        this.gioSuDungDV = gioSuDungDV;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getTongTien() {
        return tongTien;
    }

    public void setTongTien(double tongTien) {
        this.tongTien = tongTien;
    }

    public double getDonGia() {
        return donGia;
    }

    public void setDonGia(double donGia) {
        this.donGia = donGia;
    }
}