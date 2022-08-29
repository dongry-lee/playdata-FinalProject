//package com.encore.oais.vote;
//
//import com.encore.oais.voteboard.VoteBoard;
//import lombok.*;
//import javax.persistence.*;
//
//@Entity
//@Data
//@AllArgsConstructor
//@NoArgsConstructor
//
//public class Vote {
//
//    @Id
//    @GeneratedValue(strategy = GenerationType.IDENTITY)
//    private int vnum;
//
//    @OneToOne
//    @JoinColumn(nullable = false)
//    private VoteBoard wnum;
//
//    @Column(nullable = false)
//    private int nvote01;
//
//    @Column(nullable = false)
//    private int nvote02;
//
//
//
//    public Vote(String item) {
//    }
//}
