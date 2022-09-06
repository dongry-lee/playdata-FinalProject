package com.encore.oais.scrap;

import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ScrapService {
    @Autowired
    private ScrapDao dao;

    public Scrap addScrap(Scrap scrap){
        return dao.save(scrap);
    }

    public void delScrap(int snum){
        dao.deleteById(snum);
    }

    public void delScrapByNum(int num){
        Member m = new Member();
        m.setNum(num);
        dao.deleteByNum(m);
    }

    public ArrayList<Scrap> getByNum(int num){
        Member m = new Member();
        m.setNum(num);
        return dao.findByNum(m);
    }
}
