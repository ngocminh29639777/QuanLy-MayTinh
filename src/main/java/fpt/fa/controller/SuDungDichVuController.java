package fpt.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.fa.entity.SuDungDichVu;
import fpt.fa.service.SuDungDichVuService;
import fpt.fa.service.KhachHangService;
import fpt.fa.service.DichVuService;

@Controller
@RequestMapping("/suDungDichVu")
public class SuDungDichVuController {

    @Autowired
    private SuDungDichVuService suDungDichVuService;
    
    @Autowired
    private KhachHangService khachHangService;
    
    @Autowired
    private DichVuService dichVuService;

    @GetMapping("/list")
    public String getList(Model model) {
        model.addAttribute("listSuDungDichVus", suDungDichVuService.getAllSuDungDichVu());
        return "suDungDichVu/list";
    }

    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("suDungDichVu", new SuDungDichVu());
        model.addAttribute("listKhachHang", khachHangService.getAllKhachHang());
        model.addAttribute("listDichVu", dichVuService.getAllDichVu());
        return "suDungDichVu/create";
    }

    @PostMapping("/create")
    public String doCreate(@ModelAttribute SuDungDichVu suDungDichVu) {
        suDungDichVu.setKhachHang(khachHangService.getKhachHangById(suDungDichVu.getId().getMaKH()));
        suDungDichVu.setDichVu(dichVuService.getDichVuById(suDungDichVu.getId().getMaDV()));
        suDungDichVuService.createSuDungDichVu(suDungDichVu);
        return "redirect:list";
    }
}