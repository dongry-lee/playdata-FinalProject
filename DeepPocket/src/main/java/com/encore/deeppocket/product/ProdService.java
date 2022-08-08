package com.encore.deeppocket.product;


import com.encore.deeppocket.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class ProdService {
    @Autowired
    private ProdDao dao;

    public void add(Product p){
        dao.save(p);
    }

    public void edit(Product p){
        dao.save(p);
    }

    public ArrayList<Product> searchAll(){
        return (ArrayList<Product>) dao.findAll();
    }

    public Product searcByNum(int num){return dao.findByNum(num);    }
    public ArrayList<Product> searchBySeller(Member seller){
        return dao.findBySeller(seller);
    }

    public ArrayList<Product> searchByName(String name) {
        return dao.findByNameLike("%"+name+"%");
    }

    public ArrayList<Product> searchByPrice(int min, int max){
        return dao.findByPriceBetween(min, max);
    }

    public void delete(int num){
        dao.deleteById(num);
    }
}
