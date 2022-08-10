package com.encore.deeppocket.Idea;

import com.encore.deeppocket.member.Member;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import java.util.Date;

@Entity
public class Idea {

    @Id //primary key
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int num;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member writer; //member 테이블 id컬럼에 join

    private Date w_date;
    private String title;
    private String content;
    private String hash;

    private String img1;

    @Transient
    private MultipartFile f;

}
