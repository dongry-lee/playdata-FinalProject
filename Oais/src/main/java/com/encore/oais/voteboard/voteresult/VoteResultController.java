package com.encore.oais.voteboard.voteresult;

import com.encore.oais.voteboard.VoteBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Map;

@Controller
public class VoteResultController {

    @Autowired
    private VoteResultService voteResultService;

    @PostMapping("/voteboard/resultpro")
    public String voteResultPro(VoteResult voteResult) {

        voteResultService.result(voteResult);

        return "redirect:/voteboard/list";
    }


    @GetMapping("/voteboard/count")
    public String voteCount(String item,Map map){


        long votecount = voteResultService.getCount(item);

        map.put("votecount",votecount);

        return "vote/votecount";


    }

    @GetMapping("/voteboard/totalcount")
    public String voteTotalCount(int wnum,Map map) {

        long votetotalcount = voteResultService.getTotalCount(wnum);

        map.put("votetotalcount",votetotalcount);

        return "vote/votetotalcount";

    }
}
