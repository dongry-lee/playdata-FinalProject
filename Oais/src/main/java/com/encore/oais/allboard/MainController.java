package com.encore.oais.allboard;

import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.VoteBoardService;
import com.encore.oais.voteboard.voteresult.VoteResult;
import com.encore.oais.voteboard.voteresult.VoteResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
public class MainController {
    @Autowired
    private AllBoardService service;

    @Autowired
    private VoteBoardService voteBoardService;

    @Autowired
    private VoteResultService voteResultService;

    @RequestMapping
    public String main(String item,Map map){
        ArrayList<AllBoard> hotList = service.getHotIdea();
        ArrayList<VoteResult> hotVote=voteResultService.getHotVoteCount();

        ArrayList<VoteBoard> hotVoteListlast = new ArrayList<VoteBoard>();
        for(VoteResult v:hotVote){
            VoteBoard v2 = v.getWnum();
            VoteBoard v3 = voteBoardService.getBywnum(v2.getWnum());
            hotVoteListlast.add(v3);
        }

        map.put("hotList", hotList);
        map.put("hotVoteListLast", hotVoteListlast);

        return "index";
    }

}
