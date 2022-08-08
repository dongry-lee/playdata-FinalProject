package com.encore.deeppocket.member;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MemDao extends JpaRepository<Member, String> {

}

//save(): insert, update(모든 컬럼수정)
//findById(id):primary key 기준 검색
//findAll():전체검색
//deleteById():primary Key 기준 삭제
//검색에 where절 추가
//List findBy컬럼명
//List findBy컬럼명
//List findBy컬럼명Like(like절 추가)
