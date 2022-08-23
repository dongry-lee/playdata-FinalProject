package com.encore.oais.board;


import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class BoardService {
    @Autowired
    private BoardDao dao;

    public Board addBoard(Board b){
        return dao.save(b);
    }
    public Board getByNum(int num){

        return dao.findById(num).orElse(null);
    }

    public ArrayList<Board> getAll(){
        return (ArrayList<Board>) dao.findAll();
    }

    public ArrayList<Board> getByTitle(String title){
        return dao.findByTitleLike("%"+title+"%");
    }

    public ArrayList<Board> getByWriter(Member writer){
        return dao.findByWriter(writer);
    }

    public ArrayList<Board> getByContent(String content) {
        return dao.findByContentLike("%"+content+"%");
    }

    public ArrayList<Board> getByHash(String hash) {
        return dao.findByHashLike("%"+hash+"%");
    }

    public Board editBoard(Board b){
        return dao.save(b);
    }

    public void delBoard(int num){
        dao.deleteById(num);
    }


}
