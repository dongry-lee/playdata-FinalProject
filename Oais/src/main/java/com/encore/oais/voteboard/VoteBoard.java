package com.encore.oais.voteboard;

import com.encore.oais.member.Member;
import com.encore.oais.voteboard.votecomment.VoteComment;
import com.encore.oais.voteboard.voteresult.VoteResult;
import lombok.*;
import org.hibernate.annotations.ColumnDefault;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@EntityListeners(AuditingEntityListener.class)
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
    private String item03;
    private String item04;

    @CreatedDate
    private LocalDate wdate;


    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date ddate;


    private String img1;
    private String img2;
    private String img3;

    private String hash;

    @Column(columnDefinition = "integer default 0")
    private int views;




//    private int totalCount;
//    private int count01;
//    private int count02;





    @OneToMany(mappedBy = "wnum", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<VoteComment> voteComments;

    @OneToMany(mappedBy = "wnum", fetch = FetchType.LAZY, cascade = CascadeType.REMOVE, orphanRemoval = true)
    private List<VoteResult> voteResults;

}
