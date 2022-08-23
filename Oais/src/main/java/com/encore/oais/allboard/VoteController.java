package com.encore.oais.allboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/vote")
public class VoteController {

    @Autowired
    private AllBoardService service;

    @RequestMapping("")
    public String list(Model model){
        ArrayList<AllBoard> list = service.getAllIdea();
        model.addAttribute("list", list);
        return "vote/list";
    }
}
