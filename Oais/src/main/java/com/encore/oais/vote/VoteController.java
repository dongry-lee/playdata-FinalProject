
//package com.encore.oais.vote;
//
//import com.encore.oais.voteboard.VoteBoard;
//import com.encore.oais.voteboard.VoteBoardService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//
//@Controller
//public class VoteController {
//    @Autowired
//    private VoteService voteService;
//
//    @GetMapping("/voteboard/vote")
//    public String VoteBoardFrom(){
//        return "vote/vote";
//
//    }
//    @PostMapping("/voteboard/votepro")
//    public String boardvote(Vote vote) {
//        voteService.writevote(vote);
//
//        return "";
//    }
//
//}
