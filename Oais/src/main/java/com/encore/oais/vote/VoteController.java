package com.encore.oais.vote;

import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardRepository;
import com.encore.oais.voteboard.VoteBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class VoteController {
    @Autowired
    private VoteRepository voteRepository;

    @GetMapping("/voteboard/vote")
    public String newVoteDto(){
        return "/vote/vote";
    }

    @PostMapping("/voteboard/create")
    public String createVote(VoteDto form){
        System.out.println(form.toString());

        //DTO 를 Entity 로 변환
        Vote vote = form.toEntity();
        System.out.println(vote.toString());

        //Repository 에게 Entity 를 DB 안에 저장하게 함!
        Vote saved = voteRepository.save(vote);
        System.out.println(saved.toString());
        return "";
    }

}