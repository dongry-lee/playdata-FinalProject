package com.encore.oais.allboard;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/service")
public class ServiceController {

    @Autowired
    private AllBoardService service;

    @RequestMapping("/list")
    public String VoteBoard(){
        return "service/servicelist";

    }
}
