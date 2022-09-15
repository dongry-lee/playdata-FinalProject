package com.encore.oais.scrap;

import com.encore.oais.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;
import java.util.ArrayList;

@Repository
public interface ScrapDao extends JpaRepository<Scrap, Integer> {

    ArrayList<Scrap> findByNum(Member num);
}
