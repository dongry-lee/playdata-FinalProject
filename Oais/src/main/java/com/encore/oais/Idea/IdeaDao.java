package com.encore.oais.Idea;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface IdeaDao extends JpaRepository<Idea, Integer> {
    ArrayList<Idea> findByTitleLike(String title); //제목으로 검색
    ArrayList<Idea> findByContentLike(String content); //내용으로 검색
    ArrayList<Idea> findByHashLike(String hash); //해쉬태그으로 검색
    ArrayList<Idea> findByWriter(Member writer); //작성자로 검색
}