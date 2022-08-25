package com.encore.oais.allboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;

@Controller
@RequestMapping("/vote")
public class VoteController {

    @Autowired
    private AllBoardService service;

    @RequestMapping("/list")
    public String list(Model model){
        ArrayList<AllBoard> list = service.getAllvote();
        model.addAttribute("list", list);
        return "vote/list";
    }

    @GetMapping("/addvote")
    public void addvote(){}

    @PostMapping("/addvote")
    public String addvote(AllBoard v){
        service.addvote(v);
        return "redirect:/vote/list";
    }
}
