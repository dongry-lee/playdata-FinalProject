package com.encore.oais.Idea;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/idea")
public class IdeaController {

    @Autowired
    private IdeaService service;

    @GetMapping("/list") //Idea 등록 창 이동
    public void list(){}



    @RequestMapping("/")
    public String list(Model model){
        ArrayList<Idea> list = service.getAll();
        model.addAttribute("list", list);
        return "idea/list";
    }
}
