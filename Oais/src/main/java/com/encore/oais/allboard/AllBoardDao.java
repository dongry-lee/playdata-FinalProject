package com.encore.oais.allboard;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface AllBoardDao extends JpaRepository<AllBoard, Integer> {
    ArrayList<AllBoard> findByTypecd(int num);
    ArrayList<AllBoard> findByNum(Member m);
//    ArrayList<AllBoard> findByTitleLike(String title); //제목으로 검색
//    ArrayList<AllBoard> findByContentLike(String content); //내용으로 검색
//    ArrayList<AllBoard> findByHashLike(String hash); //해쉬태그로 검색
}
