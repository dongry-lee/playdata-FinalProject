package com.encore.deeppocket.product;



import com.encore.deeppocket.member.Member;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

@Entity
@Getter
@Setter
@NoArgsConstructor
@ToString
public class Product {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) //auto_increment
    private int num;

    @Column(nullable = false)
    private String name;

    @Column(name="info", length = 200, nullable = false)
    private String info;

    @Column(nullable = false)
    private int price;

    @Column(nullable = false)
    private int amount;

    @ManyToOne
    @JoinColumn(nullable = false)
    private Member seller;
}
