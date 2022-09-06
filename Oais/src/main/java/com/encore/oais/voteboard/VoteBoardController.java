package com.encore.oais.voteboard;

import com.encore.oais.voteboard.votecomment.VoteComment;
import com.encore.oais.voteboard.votecomment.VoteCommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@Controller
public class VoteBoardController {
    @Autowired
    private VoteBoardService voteBoardService;
    @Autowired
    private VoteCommentService voteCommentService;



    @RequestMapping("/voteboard")
    public String VoteBoard(){
        return "vote/list";

    }

    @GetMapping("/voteboard/write")
    public String VoteBoardFrom(){
        return "vote/vote";

    }

    @PostMapping("/voteboard/writepro")
    public String boardWritePro(VoteBoard voteBoard){
        voteBoardService.write(voteBoard);

        return "redirect:/voteboard/list";
    }

    @GetMapping("/voteboard/list")
    public String boardList(Map map){

        map.put("itemlist",voteBoardService.getAll());

        return "vote/list";

    }
    @GetMapping("/voteboard/detail")
    public String getComment(int wnum, Map map)
    {
        map.put("voteboard",voteBoardService.getBywnum(wnum));
        map.put("votecomment",voteCommentService.getByComment(wnum));


        return "vote/votedetail";
    }
    @GetMapping("/voteboard/delVoteBoard")
    public String delVoteBoard(int wnum){

        voteBoardService.delvoteboard(wnum);

        return "redirect:/voteboard/list";
    }
//
//    @GetMapping("/voteboard/writepro/{wnum}")
//    public String boardUpdate(VoteBoard voteBoard) {
//        voteBoardService.write(voteBoard);
//        return "redirect: /voteboard/write";
//    }

}
