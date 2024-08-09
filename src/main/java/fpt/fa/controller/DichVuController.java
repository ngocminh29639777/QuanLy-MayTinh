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

import fpt.fa.entity.DichVu;
import fpt.fa.service.DichVuService;

@Controller
@RequestMapping("/dichvu")
public class DichVuController {
    
    @Autowired
    private DichVuService dichVuService;
    
    @GetMapping("/list")
    public String getList(Model model, @RequestParam(defaultValue = "0") int page, @RequestParam(required = false) String search) {
        int pageSize = 2; // Số lượng dịch vụ trên mỗi trang
        Pageable pageable = PageRequest.of(page, pageSize);
        Page<DichVu> dvPage;
        if (search != null && !search.isEmpty()) {
            dvPage = dichVuService.findByMaDVContaining(search, pageable);
        } else {
            dvPage = dichVuService.findAll(pageable);
        }
        model.addAttribute("listDichVu", dvPage.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", dvPage.getTotalPages());
        return "dichvu/list";
    }
    
    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("dichVu", new DichVu());
        return "dichvu/create";
    }
    
    @PostMapping("/create")
    public String doCreate(@ModelAttribute DichVu dichVu) {
        dichVuService.createDichVu(dichVu);
        return "redirect:list";
    }
    
    @GetMapping("/delete")
    public String deleteDichVu(@RequestParam String id) {
        dichVuService.deleteDichVu(id);
        return "redirect:list";
    }
    
    @GetMapping("/update")
    public String showUpdateForm(@RequestParam("id") String maDV, Model model) {
        DichVu dichVu = dichVuService.getDichVuById(maDV);
        model.addAttribute("dichVu", dichVu);
        return "dichvu/update";
    }
    
    @PostMapping("/update")
    public String doUpdate(@ModelAttribute DichVu dichVu) {
        dichVuService.updateDichVu(dichVu);
        return "redirect:list";
    }
}