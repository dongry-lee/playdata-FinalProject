package com.encore.oais.voteboard.voteresult;

import com.encore.oais.member.Member;
import com.encore.oais.voteboard.VoteBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor

public class VoteResult {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int vnum;


    @ManyToOne
    @JoinColumn(nullable = false)
    public VoteBoard wnum;


    @Column(nullable = false)
    public String item;

    @OneToMany(cascade = CascadeType.REMOVE)
    private List<VoteBoard> voteBoards = new ArrayList<>();


}
