package com.encore.oais.voteboard;

import com.encore.oais.member.Member;
import lombok.*;

import javax.persistence.*;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class VoteBoard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int wnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member num;

    private String title;

    private String content;

    private String item01;

    private String item02;


}
