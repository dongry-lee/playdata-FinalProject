package com.encore.deeppocket.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class MemService {
    @Autowired
    private MemDao dao;

    //가입
    public Member join(Member m){
        return dao.save(m);//한줄 insert한 뒤 추가된 한줄 컬럼값들을 vo에 담아 반환
    }

    //로그인, 내정보확인
    public Member getMember(String id){
        return dao.findById(id).orElse(null); //findById():primary key 기준 검색. orElse(null): 검색결과 없으면 null 반환
    }

    //내정보수정(pwd, addr, tel 수정)
    public Member editMember(Member m){
        return dao.save(m);//primary key값을 기준으로 동일한 게 있으면 수정, 없으면 추가
    }

    //탈퇴
    public void delMember(String id){
        dao.deleteById(id); //primary key 값을 기준으로 삭제
    }

    //전체검색
    public ArrayList<Member> getAll(){
        return (ArrayList<Member>) dao.findAll();
    }


}
