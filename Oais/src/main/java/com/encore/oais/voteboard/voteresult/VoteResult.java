package com.encore.oais.voteboard.voteresult;

import com.encore.oais.voteboard.VoteBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

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

    public String item;
}
