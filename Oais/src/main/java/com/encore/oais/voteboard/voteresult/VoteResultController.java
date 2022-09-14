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

    @PostMapping("/voteboard/resultpro2")
    public String voteResultPro2(VoteResult voteResult) {

        voteResultService.result(voteResult);

        return "redirect:/voteboard/detail?wnum="+voteResult.getWnum().getWnum();
    }



    @GetMapping("/voteboard/count")
    public String voteCount(String item01,String item02, String item03, String item04, int wnum, Map map){

        long votecount1 = voteResultService.getCount(item01);
        long votecount2 = voteResultService.getCount(item02);
        if(!item03.equals("")){
        long votecount3 = voteResultService.getCount(item03);
            map.put("votecount3",votecount3);
            map.put("item03", item03);
        }
        if(!item04.equals("")){
            long votecount4 = voteResultService.getCount(item04);
            map.put("votecount4",votecount4);
            map.put("item04", item04);
        }

        long votetotalcount = voteResultService.getTotalCount(wnum);



        map.put("votetotalcount",votetotalcount);
        map.put("votecount1",votecount1);
        map.put("votecount2",votecount2);
        map.put("item01", item01);
        map.put("item02", item02);


        return "vote/votecount";

    }

    @GetMapping("/voteboard/totalcount")
    public String voteTotalCount(int wnum,Map map) {

        long votetotalcount = voteResultService.getTotalCount(wnum);

        map.put("votetotalcount",votetotalcount);

        return "vote/votetotalcount";
    }



}
