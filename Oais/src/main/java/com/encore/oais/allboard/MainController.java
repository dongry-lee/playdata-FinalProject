package com.encore.oais.allboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private AllBoardService service;

    @RequestMapping
    public String main(Map map){
        ArrayList<AllBoard> hotList = service.getHotIdea();
        map.put("hotList", hotList);
        return "index";
    }
}
