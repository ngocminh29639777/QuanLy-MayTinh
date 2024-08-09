package fpt.fa.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fpt.fa.dto.SuDungInfoDTO;
import fpt.fa.entity.SuDungDichVu;
import fpt.fa.entity.SuDungMay;
import fpt.fa.repository.SuDungDichVuRepository;
import fpt.fa.repository.SuDungMayRepository;
import fpt.fa.service.SuDungInfoService;

@Service
@Transactional
public class SuDungInfoServiceImpl implements SuDungInfoService {

    @Autowired
    private SuDungDichVuRepository suDungDichVuRepository;

    @Autowired
    private SuDungMayRepository suDungMayRepository;

    @Override
    public List<SuDungInfoDTO> getAllSuDungInfo() {
        List<SuDungInfoDTO> suDungInfoDTOList = new ArrayList<>();

        // Lấy danh sách sử dụng máy
        List<SuDungMay> suDungMayList = suDungMayRepository.findAllSuDungMayWithKhachHang();
        for (SuDungMay suDungMay : suDungMayList) {
            SuDungInfoDTO dto = new SuDungInfoDTO();
            dto.setMaKH(suDungMay.getId().getMaKH());
            dto.setTenKH(suDungMay.getKhachHang().getTenKH());
            dto.setMaMay(suDungMay.getId().getMaMay());
            dto.setViTriMay(suDungMay.getMay().getViTri());
            dto.setTrangThaiMay(suDungMay.getMay().getTrangThai());
            dto.setNgayBatDauSuDungMay(suDungMay.getId().getNgayBatDauSuDung());
            dto.setGioBatDauSuDungMay(suDungMay.getId().getGioBatDauSuDung());
            dto.setThoiGianSuDungMay(suDungMay.getThoiGianSuDung());

            // Thêm DTO vào danh sách
            suDungInfoDTOList.add(dto);
        }

        // Lấy danh sách sử dụng dịch vụ
        List<SuDungDichVu> suDungDichVuList = suDungDichVuRepository.findAllSuDungDichVuWithKhachHang();

        // Tính tổng tiền cho mỗi khách hàng từ danh sách sử dụng dịch vụ
        Map<String, Double> tongTienByKhachHang = new HashMap<>();
        for (SuDungDichVu suDungDichVu : suDungDichVuList) {
            String maKH = suDungDichVu.getId().getMaKH();
            double tongTien = tongTienByKhachHang.getOrDefault(maKH, 0.0);
            tongTien += suDungDichVu.getSoLuong() * suDungDichVu.getDonGia();
            tongTienByKhachHang.put(maKH, tongTien);

            // Tạo DTO cho dịch vụ và cập nhật tổng tiền vào đối tượng DTO
            SuDungInfoDTO dto = new SuDungInfoDTO();
            dto.setMaKH(maKH);
            dto.setTenKH(suDungDichVu.getKhachHang().getTenKH());
            dto.setMaDV(suDungDichVu.getId().getMaDV());
            dto.setNgaySuDungDV(suDungDichVu.getId().getNgaySuDung());
            dto.setGioSuDungDV(suDungDichVu.getId().getGioSuDung());
            dto.setSoLuong(suDungDichVu.getSoLuong());
            dto.setTongTien(tongTien);
            dto.setDonGia(suDungDichVu.getDonGia());

            // Thêm DTO vào danh sách
            suDungInfoDTOList.add(dto);
        }

        return suDungInfoDTOList;
    }
}