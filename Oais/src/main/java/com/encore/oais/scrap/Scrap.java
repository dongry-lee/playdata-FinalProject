package com.encore.oais.scrap;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Setter
@Getter
@ToString
public class Scrap {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int snum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member num;

    @OneToOne
    @JoinColumn(unique = true)
    private AllBoard wnum;

    @OneToOne
    @JoinColumn(unique = true)
    private VoteBoard wnum2;


}
