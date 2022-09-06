package com.encore.oais.comments;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class CommentsService {
    @Autowired
    private CommentsDao dao;

    public ArrayList<Comments> getAll(AllBoard wnum){
        return dao.findByWnum(wnum);
    }

    public ArrayList<Comments> getByNum(int num){
        Member m = new Member();
        m.setNum(num);
        return dao.findByNum(m);
    }
    public Comments addComment(Comments c){
        return dao.save(c);
    }

    public void delConmment(int cnum){dao.deleteById(cnum);}

    public void delCommentByNum(int num){
        Member m = new Member();
        m.setNum(num);
        dao.deleteByNum(m);}
}
