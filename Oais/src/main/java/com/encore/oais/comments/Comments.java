package com.encore.oais.comments;

import com.encore.oais.allboard.AllBoard;
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
public class Comments {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int cnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private AllBoard wnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member num;

    private String content;

    @Temporal(TemporalType.DATE)
    @DateTimeFormat(pattern="yyyy-MM-dd hh:mm")
    private Date cdate;

    @PrePersist  //insert전 미리 실행해야할 메소드
    public void beforeCreate(){
        cdate = new Date();//현재 시간 생성
    }
}
