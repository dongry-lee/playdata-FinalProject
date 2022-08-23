//도메인은 DB와 밀접한,중요한 entity 클래스가 들어있다.

package com.encore.deeppocket.vote;

import lombok.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.persistence.*;


@Entity
@Getter //무작정 setter메소드 만드는 것 보다 값 변경이 필요하면 @Builder 통해 그에 관한 메소드 추가
@ToString
@NoArgsConstructor

public class Vote {


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int vnum; //항목번호

    @ManyToOne
    private int wnum; //글번호

    @Column
    private String item; // 투표항목내용

    @Column
    private int nvote; //투표 득표수

    @Builder
    public Vote(int wnum, int vnum, String item, int nvote) {
        this.wnum = wnum;
        this.vnum = vnum;
        this.item = item;
        this.nvote = nvote;
    }
}
