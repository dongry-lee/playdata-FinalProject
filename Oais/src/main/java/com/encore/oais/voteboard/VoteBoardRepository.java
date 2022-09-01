package com.encore.oais.voteboard;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface VoteBoardRepository extends JpaRepository<VoteBoard,Integer> {

}
