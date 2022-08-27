
package com.encore.oais.vote;

import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class VoteController {
    @Autowired
    private VoteRepository voteRepository;

    @GetMapping("/voteboard/vote")
    public String newVoteFrom() {
        return "/vote/vote";

    }

    @PostMapping("/voteboard/create")
    public String createVote(VoteDto dto) {
        System.out.println(dto.toString());


        Vote vote = dto.toEntity();
        System.out.println(vote.toString());


        Vote saved = voteRepository.save(vote);

        System.out.println(saved.toString());

        return "";

    }


}

