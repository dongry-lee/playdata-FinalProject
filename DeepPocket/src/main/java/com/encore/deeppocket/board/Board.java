package com.encore.deeppocket.board;


import com.encore.deeppocket.member.Member;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;
import java.util.Date;


@Entity
@Setter
@Getter
@ToString
public class Board {

    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int num;

    @ManyToOne//(다대일)   //@OneToOne(일대일), @OneToMany(일대다), @ManyToMany(다대다)
    @JoinColumn(nullable = false)
    private Member writer; //member 테이블 id컬럼에 join


    private Date w_date;
    private String title;
    private String content;

    @PrePersist  //insert전 미리 실행해야할 메소드
    public void beforeCreate(){
        w_date = new Date();//현재 날찌 생성
    }
}
