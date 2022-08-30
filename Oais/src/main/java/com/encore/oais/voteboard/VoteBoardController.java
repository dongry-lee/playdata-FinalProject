package com.encore.oais.voteboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

@Controller
public class VoteBoardController {
    @Autowired
    private VoteBoardService voteBoardService;

    @RequestMapping("/voteboard")
    public String VoteBoard(){
        return "vote/list";

    }

    @GetMapping("/voteboard/write")
    public String VoteBoardFrom(){
        return "vote/vote";

    }

    @PostMapping("/voteboard/writepro")
    public String boardWritePro(VoteBoard voteBoard){
        voteBoardService.write(voteBoard);

        return "redirect:/voteboard/list";
    }

    @GetMapping("/voteboard/list")
    public String boardList(Map map){

        map.put("itemlist",voteBoardService.getAll());

        return "vote/list";

    }


    @RequestMapping("/votedetail")
    public String VoteDetailFrom(){
        return "vote/votedetail";
    }

//    @GetMapping("/voteboard/list")
//    public String voteCount(Map map){
//
//        map.put("voteCount",voteBoardService.getCount());
//
//        return "vote/list";
//    }

}
