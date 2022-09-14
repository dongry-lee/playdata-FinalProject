package com.encore.oais.voteboard.voteresult;

import com.encore.oais.voteboard.VoteBoard;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VoteResultService {
    @Autowired
    private VoteResultRepository voteResultRepository;
    public void result(VoteResult voteResult) {
        voteResultRepository.save(voteResult);
    }
    public long getCount(String item) {
        return voteResultRepository.countByItem(item);
    }
    public long getTotalCount(int wnum) {
        VoteBoard voteBoard = new VoteBoard();
        voteBoard.setWnum(wnum);
        return voteResultRepository.countByWnum(voteBoard);
    }
    public void deletWnum(int wnum){
        VoteBoard voteBoard= new VoteBoard();
        voteBoard.setWnum(wnum);
        voteResultRepository.deleteByWnum(voteBoard);
    }
    public ArrayList<VoteResult> getHotVoteCount(){
        return voteResultRepository.hotVote();
    }
}
