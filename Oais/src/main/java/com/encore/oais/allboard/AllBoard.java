package com.encore.oais.allboard;


import com.encore.oais.member.Member;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;


@Entity
@Setter
@Getter
@ToString
public class AllBoard {

    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int wnum;

    @ManyToOne//(다대일)   //@OneToOne(일대일), @OneToMany(일대다), @ManyToMany(다대다)
    @JoinColumn(nullable = false)
    private Member num; //member 테이블 id컬럼에 join

    private int typecd; //0아이디어게시판, 1자유게시판, 2고객센터

    @Column(nullable = false)
    private String title;

    @Column(nullable = false)
    private String content;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date wdate;

    @Temporal(TemporalType.DATE)
    @Column(nullable = false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date ddate;

    @Column(columnDefinition = "integer default 0")
    private int views;

    @Column(columnDefinition = "integer default 0")
    private int part;

    private String hash; //해쉬,태그,이걸,나눠서,써야하네

    @PrePersist  //insert전 미리 실행해야할 메소드
    public void beforeCreate(){
        wdate = new Date();//현재 날짜 생성
    }
}
