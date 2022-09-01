package com.encore.oais.voteboard;

import com.encore.oais.allboard.AllBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteBoardService {

    @Autowired
    private VoteBoardRepository voteBoardRepository;

    public VoteBoard getByWnum(int wnum){

        return voteBoardRepository.findById(wnum).orElse(null);
    }

    public void write(VoteBoard voteBoard) {

        voteBoardRepository.save(voteBoard);
    }

    public ArrayList<VoteBoard> getAll() {

        return (ArrayList<VoteBoard>) voteBoardRepository.findAll();

    }

//    public VoteBoard getBywnum(int wnum){
//
//        return voteBoardRepository.findById(wnum);
//
//    }



}

