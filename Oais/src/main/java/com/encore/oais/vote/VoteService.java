package com.encore.oais.vote;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.allboard.AllBoardDao;
import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteService {

    @Autowired
    private VoteRepository voteRepository;

    @Autowired
    private AllBoardDao dao;

    public void writevote(Vote vote){voteRepository.save(vote);
    }

    public ArrayList<AllBoard> getAllvote() { return dao.findByTypecd(0);}
    public AllBoard addvote(AllBoard v){
        v.setTypecd(0);
        return dao.save(v);
    }
}