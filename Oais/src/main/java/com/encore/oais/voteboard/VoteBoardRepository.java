package com.encore.oais.voteboard;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
@Repository
public interface VoteBoardRepository extends JpaRepository<VoteBoard,Integer> {
    @Transactional // 데이터베이스의 상태를 변경하는 작업 또는 한번에 수행되어야 하는 연산들을 의미
    ArrayList<VoteBoard> deleteAllByWnum(int wnum);


    ArrayList<VoteBoard> findByNum(Member num);
}
