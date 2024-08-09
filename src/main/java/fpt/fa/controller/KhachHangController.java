package fpt.fa.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import fpt.fa.entity.KhachHang;
import fpt.fa.service.KhachHangService;

@Controller
@RequestMapping("/khachhang")
public class KhachHangController {
    
    @Autowired
    private KhachHangService khachHangService;
    
    @GetMapping("/list")
    public String getList(Model model, @RequestParam(defaultValue = "0") int page, @RequestParam(required = false) String search) {
        int pageSize = 2; // Số lượng khách hàng trên mỗi trang
        Pageable pageable = PageRequest.of(page, pageSize);
        Page<KhachHang> khPage;
        if (search != null && !search.isEmpty()) {
            khPage = khachHangService.findByMaKHContaining(search, pageable);
        } else {
            khPage = khachHangService.findAll(pageable);
        }
        model.addAttribute("listKhachHang", khPage.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", khPage.getTotalPages());
        return "khachhang/list";
    }
    
    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("khachHang", new KhachHang());
        return "khachhang/create";
    }
    
    @PostMapping("/create")
    public String doCreate(@ModelAttribute KhachHang khachHang) {
        khachHangService.createKhachHang(khachHang);
        return "redirect:list";
    }
    
    @GetMapping("/delete")
    public String deleteKhachHang(@RequestParam String id) {
        khachHangService.deleteKhachHang(id);
        return "redirect:list";
    }
    
    @GetMapping("/update")
    public String showUpdateForm(@RequestParam("id") String maKH, Model model) {
        KhachHang kh = khachHangService.getKhachHangById(maKH);
        model.addAttribute("khachHang", kh);
        return "khachhang/update";
    }
    
    @PostMapping("/update")
    public String doUpdate(@ModelAttribute KhachHang khachHang) {
        khachHangService.updateKhachHang(khachHang);
        return "redirect:list";
    }
}