//DTO 는 직접 화면에서 받고 넘기는 객체들

package com.encore.deeppocket.vote;

import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Getter
public class VoteRequestDTO {
    private String item;
    private int vnum;
    private int nvote;

    @Builder
    public VoteRequestDTO(String item, int vnum, int nvote) {
        this.item = item;
        this.vnum = vnum;
        this.nvote = nvote;
    }

    public Vote toEntity(){
        return Vote.builder()
                .item(item)
                .vnum(vnum)
                .nvote(nvote)
                .build();
    }
}
