package com.encore.oais.board;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface BoardDao extends JpaRepository<Board, Integer> {
    ArrayList<Board> findByTitleLike(String title); //제목으로 검색
    ArrayList<Board> findByContentLike(String content); //내용으로 검색
    ArrayList<Board> findByHashLike(String hash); //해쉬태그으로 검색
    ArrayList<Board> findByWriter(Member writer); //작성자로 검색
}
