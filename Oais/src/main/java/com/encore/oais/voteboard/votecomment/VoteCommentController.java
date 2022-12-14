package com.encore.oais.voteboard.votecomment;

import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class VoteCommentController {

    @Autowired
    private VoteCommentService voteCommentService;
    @Autowired
    private VoteBoardService voteBoardService;


    @PostMapping("/voteboard/detailpro")
    public String addComment(VoteComment voteComment) {

        voteCommentService.addComment(voteComment);

        return "redirect:/voteboard/detail?wnum="+ voteComment.getWnum().getWnum();
    }

    @GetMapping("/voteboard/delcomment")
    public String delcomment(int cnum,int wnum) {


        voteCommentService.delComment(cnum);

        return "redirect:/voteboard/detail?wnum="+ wnum ;




    }



}
