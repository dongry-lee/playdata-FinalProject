package com.encore.oais.voteboard.votecomment;

import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class VoteCommentController {

    @Autowired
    VoteCommentService voteCommentService;

    @RequestMapping("voteboard/detail")
    public String voteBoardCommentForm(){

        return "/vote/votedetail";
    }



}
