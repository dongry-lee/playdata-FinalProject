package com.encore.deeppocket.member;


import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;


@Entity //테이블
@Setter
@Getter
@NoArgsConstructor
@ToString
public class Member {

    @Id//primary key 설정
    private String id;

    @Column(nullable = false) //@Column: 컬럼설정. 컬렴명, 제약조건 등. nullable=false:not null;
    private String pwd;

    private boolean mem_type;
    private String tel;
    private String addr;
}
