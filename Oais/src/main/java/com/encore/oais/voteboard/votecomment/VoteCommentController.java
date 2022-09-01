package com.encore.oais.voteboard.votecomment;

import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class VoteCommentController {
    @Autowired
    MemService memService;

    @Autowired
    VoteCommentService voteCommentService;

    @Autowired
    VoteBoardService voteBoardService;


    @PostMapping("voteboard/detailpro")
    public String voteAddComment(int wnum,int num,String comment){

        VoteBoard voteBoard =voteBoardService.getByWnum(wnum);
        Member member = memService.getByNum(num);
        VoteComment voteComment = new VoteComment();
        voteComment.setComment(comment);
        voteComment.setNum(member);
        voteComment.setWnum(voteBoard);
        voteCommentService.addComment(voteComment);
        voteBoardService.getAll();
        return "redirect:/vote/votedetail";

    }

    @GetMapping("voteboard/detail")
    public String voteDetailForm(int wnum, Map map){
        VoteBoard voteBoard = voteBoardService.getByWnum(wnum);
        ArrayList<VoteComment> voteComment= voteCommentService.getAll(voteBoard);
        map.put("board", voteBoard );
        map.put("comment",voteComment);
        voteBoardService.getAll();

        return "/vote/votedetail";
    }

}
