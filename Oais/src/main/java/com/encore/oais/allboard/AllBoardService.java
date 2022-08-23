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
    public AllBoard addIdea(AllBoard b){
        b.setTypecd(0);
        return dao.save(b);
    }
    public AllBoard getByNum(int wnum){

        return dao.findById(wnum).orElse(null);
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
