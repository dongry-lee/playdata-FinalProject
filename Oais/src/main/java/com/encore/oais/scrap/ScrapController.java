package com.encore.oais.scrap;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.allboard.AllBoardService;
import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/scrap")
public class ScrapController {

    @Autowired
    private ScrapService service;

    @Autowired
    private MemService m_service;

    @Autowired
    private AllBoardService a_service;

    @GetMapping("/add")
    public String addScrap(int num, int wnum, String page){
        Member m = m_service.getByNum(num);
        AllBoard a = a_service.getByWnum(wnum);
        Scrap scrap = new Scrap();
        scrap.setNum(m);
        scrap.setWnum(a);
        service.addScrap(scrap);
        return "redirect:/"+page+"/";
    }

    @GetMapping("/del")
    public String delScrap(int snum){
        service.delScrap(snum);
        return "redirect:/member/mypage";
    }
}
