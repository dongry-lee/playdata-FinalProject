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
    private int cnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private VoteBoard wnum;

    @OneToOne
    @JoinColumn(nullable = false)
    private Member num;

    private String comment;

}
