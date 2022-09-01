package com.encore.oais.voteboard.votecomment;

import com.encore.oais.comments.Comments;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteCommentService {
    @Autowired
    VoteCommentRepository voteCommentRepository;

    public ArrayList<VoteComment> getAll(VoteBoard wnum){

        return voteCommentRepository.findByWnum(wnum);

    }

    public ArrayList<VoteComment> getByNum(int num){
        Member member= new Member();
        member.setNum(num);
        return voteCommentRepository.findByNum(member);

    }

    public VoteComment addComment(VoteComment voteComment){

        return voteCommentRepository.save(voteComment);

    }

    public void deletById(int cnum){
        voteCommentRepository.deleteById(cnum);}

}
