package fpt.fa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import fpt.fa.dto.SuDungInfoDTO;
import fpt.fa.service.SuDungInfoService;

@Controller
@RequestMapping("/su-dung-info")
public class SuDungInfoController {

    @Autowired
    private SuDungInfoService suDungInfoService;

    @GetMapping("/list")
    public String getAllSuDungInfo(Model model) {
        List<SuDungInfoDTO> suDungInfoList = suDungInfoService.getAllSuDungInfo();
        model.addAttribute("listSuDungInfo", suDungInfoList);
        return "su-dung-info/list"; // Tên của file JSP được trả về
    }
}