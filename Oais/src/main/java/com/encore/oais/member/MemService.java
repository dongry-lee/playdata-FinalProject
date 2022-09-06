package com.encore.oais.member;

import com.encore.oais.allboard.AllBoardService;
import com.encore.oais.comments.CommentsService;
import com.encore.oais.scrap.ScrapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class MemService {
    @Autowired
    private MemDao dao;

    @Autowired
    private ScrapService s_service;

    @Autowired
    private CommentsService c_service;

    @Autowired
    private AllBoardService a_service;
    //가입
    public Member join(Member m){
        return dao.save(m);//한줄 insert한 뒤 추가된 한줄 컬럼값들을 vo에 담아 반환
    }

//    로그인, 내정보확인
    public ArrayList<Member> getMember(String id){
        return dao.findByMid(id);
    }

    //내정보수정(pwd, name, email, tel 수정)
    public Member editMember(Member m){
        return dao.save(m);//primary key값을 기준으로 동일한 게 있으면 수정, 없으면 추가
    }

    //탈퇴
    public void delMember(int num){
        dao.deleteById(num);
//        s_service.delScrapByNum(num); //멤버가 한 스크랩 삭제
//        c_service.delCommentByNum(num);// 맴버가 쓴 댓글 삭제
//        //멤버가 쓴 글의 댓글 삭제
//        //멤버가 쓴 글을 누군가가 스크랩 한걸 삭제
//        a_service.delAllBoardByNum(num);//멤버가 쓴 글 삭제

    }

    public Member getByNum(int num){
        return dao.findById(num).orElse(null);
    }

}
