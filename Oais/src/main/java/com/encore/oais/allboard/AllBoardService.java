package com.encore.oais.allboard;


import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class AllBoardService {
    @Autowired
    private AllBoardDao dao;

    public ArrayList<AllBoard> getAllIdea(){
        return dao.findByTypecd(0);
    }
    public ArrayList<AllBoard> getAllCommunity(){
        return dao.findByTypecd(1);
    }
    public ArrayList<AllBoard> getAllService(){
        return dao.findByTypecd(2);
    }

    public ArrayList<AllBoard> getHotIdea(){return dao.hotidea();}


    public AllBoard addAllBoard(AllBoard b){
        return dao.save(b);
    }
    public AllBoard addIdea(AllBoard b) {
        b.setTypecd(0);
     return dao.save(b);
    }

    public AllBoard addCommunity(AllBoard b){
        b.setTypecd(1);
        return dao.save(b);
    }

    public AllBoard addService(AllBoard b){
        b.setTypecd(2);
        return dao.save(b);
    }

    public ArrayList<AllBoard> getAllvote() { return dao.findByTypecd(0);}
    public AllBoard addvote(AllBoard v){
        v.setTypecd(0);
        return dao.save(v);
    }

    public AllBoard getByWnum(int wnum){

        return dao.findById(wnum).orElse(null);
    }

    public void delAllBoard(int wnum){
        dao.deleteById(wnum);
    }


    public ArrayList<AllBoard> getByNum(int m){
        Member member = new Member();
        member.setNum(m);
        return dao.findByNum(member);
    }

    public ArrayList<AllBoard> search(String val){
        return dao.selectVal("%"+val+"%");
    }

    public ArrayList<AllBoard> searchVote(String val){
        return dao.selectvoteVal("%"+val+"%");
    }
//
//
//    public ArrayList<AllBoard> getByTitle(String title){
//        return dao.findByTitleLike("%"+title+"%");
//    }
//
//    public ArrayList<AllBoard> getByWriter(Member writer){
//        return dao.findByWriter(writer);
//    }
//
//    public ArrayList<AllBoard> getByContent(String content) {
//        return dao.findByContentLike("%"+content+"%");
//    }
//
//    public ArrayList<AllBoard> getByHash(String hash) {
//        return dao.findByHashLike("%"+hash+"%");
//    }
//
//    public AllBoard editBoard(AllBoard b){
//        return dao.save(b);
//    }
//
//    public void delBoard(int num){
//        dao.deleteById(num);
//    }


}
