package com.encore.oais.voteboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

        return "vote/list";
    }
}
