package fpt.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.fa.entity.SuDungMay;
import fpt.fa.service.SuDungMayService;
import fpt.fa.service.KhachHangService;
import fpt.fa.service.MayService;

@Controller
@RequestMapping("/suDungMay")
public class SuDungMayController {

    @Autowired
    private SuDungMayService suDungMayService;
    
    @Autowired
    private KhachHangService khachHangService;
    
    @Autowired
    private MayService mayService;

    @GetMapping("/list")
    public String getList(Model model) {
        model.addAttribute("listSuDungMays", suDungMayService.getAllSuDungMay());
        return "suDungMay/list";
    }

    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("suDungMay", new SuDungMay());
        model.addAttribute("listKhachHang", khachHangService.getAllKhachHang());
        model.addAttribute("listMay", mayService.getAllMay());
        return "suDungMay/create";
    }

    @PostMapping("/create")
    public String doCreate(@ModelAttribute SuDungMay suDungMay) {
        suDungMay.setKhachHang(khachHangService.getKhachHangById(suDungMay.getId().getMaKH()));
        suDungMay.setMay(mayService.getMayById(suDungMay.getId().getMaMay()));
        suDungMayService.createSuDungMay(suDungMay);
        return "redirect:list";
    }
}