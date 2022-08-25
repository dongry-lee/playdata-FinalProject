package com.encore.oais.vote;

import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteService {

    @Autowired
    private VoteRepository voteRepository;

    public void writevote(Vote vote){voteRepository.save(vote);
    }
}