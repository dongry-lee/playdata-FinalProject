package com.encore.oais.vote;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.ToString;

@NoArgsConstructor
@AllArgsConstructor
@ToString
public class VoteDto {
    private String item;

    public Vote toEntity(){
        return new Vote(null,item);
    }

}
