package com.encore.oais.allboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class SearchController {


    @Autowired AllBoardService service;

    @GetMapping("/search")
    public void search(String val, Map map){
        ArrayList<AllBoard> result = service.search(val);
        ArrayList<AllBoard> resultVote = service.searchVote(val);
        map.put("result", result);
        map.put("resultVote", resultVote);

    }
}
