package com.encore.oais.voteboard;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.votecomment.VoteComment;
import com.encore.oais.voteboard.votecomment.VoteCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Array;
import java.util.ArrayList;

@Service
public class VoteBoardService {

    @Autowired
    private VoteBoardRepository voteBoardRepository;



    public VoteBoard write(VoteBoard voteBoard) {

        return voteBoardRepository.save(voteBoard);
    }

    public ArrayList<VoteBoard> getAll() {

        return (ArrayList<VoteBoard>) voteBoardRepository.findAll();

    }

    public VoteBoard getBywnum(int wnum){


        return voteBoardRepository.findById(wnum).orElse(null);


    }

    public ArrayList<VoteBoard> delvoteboard(int wnum){


        return voteBoardRepository.deleteAllByWnum(wnum);

    }


    public ArrayList<VoteBoard> getHotVoteIdea(){

        return voteBoardRepository.hotvoteidea();

    }



    public ArrayList<VoteBoard> selectByNum(int num){
        Member m = new Member();
        m.setNum(num);
        return voteBoardRepository.findByNum(m);
    }


}

