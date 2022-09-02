package com.encore.oais.voteboard.votecomment;


import com.encore.oais.allboard.AllBoard;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class VoteComment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int cnum; // 댓글번호

    @ManyToOne
    @JoinColumn(nullable = false)
    private VoteBoard wnum; //글번호

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member num; //회원번호

    private String comment; //댓글내용

}
