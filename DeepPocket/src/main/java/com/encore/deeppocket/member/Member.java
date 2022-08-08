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

    private String pwd;

    @Column(nullable = false) //@Column: 컬럼설정. 컬렴명, 제약조건 등. nullable=false:not null;
    private String name;

    @Column(columnDefinition = "boolean default false")
    private boolean mem_type; //관리자, 일반회원
    private String email;
    private String tel;
}
