package com.encore.oais.vote;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardService;
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
    private VoteService voteService;

    @RequestMapping("/list")
    public String list(Model model){
        ArrayList<AllBoard> list = voteService.getAllvote();
        model.addAttribute("list", list);
        return "vote/list";
    }

    @GetMapping("/voteboard/vote")
    public String VoteBoardFrom(){
        return "vote/vote";

    }
    @PostMapping("/voteboard/votepro")
    public String boardvote(Vote vote) {
        voteService.writevote(vote);

        return "";
    }



}