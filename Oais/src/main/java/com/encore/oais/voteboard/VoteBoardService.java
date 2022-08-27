package com.encore.oais.voteboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VoteBoardService {

    @Autowired
    private VoteBoardRepository voteBoardRepository;

    public void write(VoteBoard voteBoard){

        voteBoardRepository.save(voteBoard);
    }
}
