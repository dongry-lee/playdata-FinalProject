package com.encore.deeppocket.product;


import com.encore.deeppocket.member.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;

@Repository
public interface ProdDao extends JpaRepository<Product, Integer> {
    ArrayList<Product> findBySeller(Member seller);
    Product findByNum(int num);
    ArrayList<Product> findByNameLike(String name);
    ArrayList<Product> findByPriceBetween(int min, int max);

}
