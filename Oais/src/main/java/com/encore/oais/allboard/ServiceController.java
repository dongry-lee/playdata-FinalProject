package com.encore.oais.allboard;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ServiceController {

    @Autowired
    private AllBoardService service;

    @RequestMapping("/list")
    public String servicelist(){
        return "service/servicelist";

    }

    @GetMapping("/add")
    public String serviceaddForm(){
        return "service/service_add";
    }

//    @PostMapping("/add")
//    public String serviceWrite(){
//
//        return "redirect:/service/list";
//    }

    @GetMapping("/detail")
    public String serviceDetailForm(){
        return "service/service_detail";
    }
}
