package com.encore.oais.voteboard.voteresult;

import com.encore.oais.voteboard.VoteBoard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;

@Repository
public interface VoteResultRepository extends JpaRepository<VoteResult, Integer> {

    long countByItem(String item);
    long countByWnum(VoteBoard wnum);

    @Transactional
    void deleteByWnum(VoteBoard wnum);

    @Query(value = "select * from vote_result group by wnum_wnum,vnum,item order by count(wnum_wnum) desc limit 3",nativeQuery = true )
    ArrayList<VoteResult> hotVote();


}
