package com.encore.oais.allboard;


import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BoardService {
    @Autowired
    private BoardDao dao;

    public allboard addBoard(allboard b){
        return dao.save(b);
    }
    public allboard getByNum(int num){

        return dao.findById(num).orElse(null);
    }

    public ArrayList<allboard> getAll(){
        return (ArrayList<allboard>) dao.findAll();
    }

    public ArrayList<allboard> getByTitle(String title){
        return dao.findByTitleLike("%"+title+"%");
    }

    public ArrayList<allboard> getByWriter(Member writer){
        return dao.findByWriter(writer);
    }

    public ArrayList<allboard> getByContent(String content) {
        return dao.findByContentLike("%"+content+"%");
    }

    public ArrayList<allboard> getByHash(String hash) {
        return dao.findByHashLike("%"+hash+"%");
    }

    public allboard editBoard(allboard b){
        return dao.save(b);
    }

    public void delBoard(int num){
        dao.deleteById(num);
    }


}
