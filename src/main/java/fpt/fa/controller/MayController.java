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

import fpt.fa.entity.May;
import fpt.fa.service.MayService;

@Controller
@RequestMapping("/may")
public class MayController {
    
    @Autowired
    private MayService mayService;
    
    @GetMapping("/list")
    public String getList(Model model, @RequestParam(defaultValue = "0") int page, @RequestParam(required = false) String search) {
        int pageSize = 2; // Số lượng máy trên mỗi trang
        Pageable pageable = PageRequest.of(page, pageSize);
        Page<May> mayPage;
        if (search != null && !search.isEmpty()) {
            mayPage = mayService.findByMaMayContaining(search, pageable);
        } else {
            mayPage = mayService.findAll(pageable);
        }
        model.addAttribute("listMays", mayPage.getContent());
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", mayPage.getTotalPages());
        return "may/list";
    }
    
    @GetMapping("/create")
    public String showCreate(Model model) {
        model.addAttribute("may", new May());
        return "may/create";
    }
    
    @PostMapping("/create")
    public String doCreate(@ModelAttribute May may) {
        mayService.createMay(may);
        return "redirect:list";
    }
    
    @GetMapping("/delete")
    public String deleteMay(@RequestParam String id) {
        mayService.deleteMay(id);
        return "redirect:list";
    }
    
    @GetMapping("/update")
    public String showUpdateForm(@RequestParam("id") String maMay, Model model) {
        May may = mayService.getMayById(maMay);
        model.addAttribute("may", may);
        return "may/update";
    }
    
    @PostMapping("/update")
    public String doUpdate(@ModelAttribute May may) {
        mayService.updateMay(may);
        return "redirect:list";
    }
}