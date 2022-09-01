package com.encore.oais.voteboard.voteresult;

import com.encore.oais.voteboard.VoteBoard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

@Repository
public interface VoteResultRepository extends JpaRepository<VoteResult, Integer> {

    long countByItem(String item);

    long countByWnum(VoteBoard wnum);


}
