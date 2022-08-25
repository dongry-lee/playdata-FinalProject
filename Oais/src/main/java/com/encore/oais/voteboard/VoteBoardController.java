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

    @GetMapping("/voteboard/write")
    public String VoteBoardFrom(){
        return "vote/voteboard";

    }

    @PostMapping("/voteboard/writepro")
    public String boardWritePro(VoteBoard voteBoard){
        voteBoardService.write(voteBoard);

        return "";
    }
}
