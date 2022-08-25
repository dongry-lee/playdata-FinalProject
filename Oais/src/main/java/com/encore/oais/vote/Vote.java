package com.encore.oais.vote;

import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import lombok.*;

import javax.persistence.*;

@Entity
@Data

public class Vote {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int vnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private VoteBoard wnum;

    @Column
    private String item;

    @Column
    private int nvote;

}
