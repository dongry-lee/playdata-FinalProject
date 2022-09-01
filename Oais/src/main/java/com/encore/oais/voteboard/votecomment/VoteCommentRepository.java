package com.encore.oais.voteboard.votecomment;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.comments.Comments;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface VoteCommentRepository extends JpaRepository<VoteComment,Integer> {

    ArrayList<VoteComment> findByWnum(VoteBoard wnum);

    ArrayList<VoteComment> findByNum(Member num);

}
