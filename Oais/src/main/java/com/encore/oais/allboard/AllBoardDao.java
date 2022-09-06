package com.encore.oais.allboard;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface AllBoardDao extends JpaRepository<AllBoard, Integer> {
    ArrayList<AllBoard> findByTypecd(int num);
    ArrayList<AllBoard> findByNum(Member m);

    @Query(value = "select * from vote_board where title like :val or content like :val or hash like :val", nativeQuery = true)
    ArrayList<AllBoard> selectvoteVal(@Param(value = "val") String val);
    @Query(value = "select * from all_board where title like :val or content like :val or hash like :val", nativeQuery = true)
    ArrayList<AllBoard> selectVal(@Param(value = "val") String val);

    @Query(value = "select * from all_board where typecd=0 order by part DESC limit 4", nativeQuery = true)
    ArrayList<AllBoard> hotidea();
    
//    ArrayList<AllBoard> findByTitleLike(String title); //제목으로 검색
//    ArrayList<AllBoard> findByContentLike(String content); //내용으로 검색
//    ArrayList<AllBoard> findByHashLike(String hash); //해쉬태그로 검색
}
