package com.encore.deeppocket.Idea;

import com.encore.deeppocket.Idea.Idea;
import com.encore.deeppocket.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class IdeaService {
    @Autowired
    private IdeaDao dao;

    public Idea addIdea(Idea I){
        return dao.save(I);
    }

    public Idea getByNum(int num){
        return dao.findById(num).orElse(null);
    }

    public ArrayList<Idea> getAll(){
        return (ArrayList<Idea>) dao.findAll();
    }

    public ArrayList<Idea> getByTitle(String title){
        return dao.findByTitleLike("%"+title+"%");
    }

    public ArrayList<Idea> getByWriter(Member writer){
        return dao.findByWriter(writer);
    }

    public ArrayList<Idea> getByContent(String content) {
        return dao.findByContentLike("%"+content+"%");
    }

    public ArrayList<Idea> getByHash(String hash) {
        return dao.findByContentLike("%"+hash+"%");
    }

    public Idea editIdea(Idea I){
        return dao.save(I);
    }

    public void delIdea(int num){
        dao.deleteById(num);
    }
}
