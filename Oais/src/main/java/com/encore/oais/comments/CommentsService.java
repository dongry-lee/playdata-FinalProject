package com.encore.oais.comments;

import com.encore.oais.allboard.AllBoard;
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

    public Comments addComment(Comments c){
        return dao.save(c);
    }

    public void delConmment(int cnum){
        dao.deleteById(cnum);
    }
}
