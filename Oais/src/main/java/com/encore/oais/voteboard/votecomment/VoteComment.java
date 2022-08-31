package com.encore.oais.voteboard.votecomment;


import com.encore.oais.voteboard.VoteBoard;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
public class VoteComment {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int vnum;

    @ManyToOne
    @JoinColumn(nullable = false)
    private VoteBoard wnum;

    private String commnet;
}
