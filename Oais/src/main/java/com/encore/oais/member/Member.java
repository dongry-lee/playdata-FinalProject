package com.encore.oais.member;


import com.encore.oais.allboard.AllBoard;
import com.encore.oais.comments.Comments;
import com.encore.oais.scrap.Scrap;
import com.encore.oais.voteboard.VoteBoard;
import com.encore.oais.voteboard.votecomment.VoteComment;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.List;


@Entity //테이블
@Setter
@Getter
@NoArgsConstructor
@ToString
public class Member {

    @Id//primary key 설정
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int num;

    @Column(nullable = false, unique = true)
    private String mid;

    @Column(nullable = false)
    private String pwd;

    @Column(nullable = false) //@Column: 컬럼설정. 컬렴명, 제약조건 등. nullable=false:not null;
    private String name;

    private String tel;

    @Column(columnDefinition = "boolean default false")
    private boolean domtype; //관리자, 일반회원(false)

    @Column(columnDefinition = "boolean default false")
    private boolean socialtype; //소셜, 일반회원(false)


    @OneToMany(mappedBy = "num", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<AllBoard> allBoards;


    @OneToMany(mappedBy = "num", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<Comments> comments;

    @OneToMany(mappedBy = "num", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<Scrap> scraps;

    @OneToMany(mappedBy = "num", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<VoteBoard> voteBoards;

    @OneToMany(mappedBy = "num", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<VoteComment> voteComments;
}
