package com.encore.oais.voteboard;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteBoardService {

    @Autowired
    private VoteBoardRepository voteBoardRepository;

    public void write(VoteBoard voteBoard) {

        voteBoardRepository.save(voteBoard);
    }

    public ArrayList<VoteBoard> getAll() {

        return (ArrayList<VoteBoard>) voteBoardRepository.findAll();

    }




}

