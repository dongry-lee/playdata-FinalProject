package com.encore.oais.vote;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.stereotype.Repository;

import javax.persistence.Id;
import java.util.Optional;


public interface VoteRepository extends JpaRepository<Vote,Integer> {

}
