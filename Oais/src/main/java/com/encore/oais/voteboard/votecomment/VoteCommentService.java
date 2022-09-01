package com.encore.oais.voteboard.votecomment;

import com.encore.oais.voteboard.VoteBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteCommentService {
    @Autowired
    private VoteCommentRepository voteCommentRepository;

    public void addComment(VoteComment voteComment) {

        voteCommentRepository.save(voteComment);

    }


    public ArrayList<VoteComment> getAll() {

        return (ArrayList<VoteComment>) voteCommentRepository.findAll();

    }
}
