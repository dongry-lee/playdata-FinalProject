package com.encore.deeppocket.product;


import com.encore.deeppocket.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
@RequestMapping("/product")
public class ProdController {
    @Autowired
    private ProdService service;

    @RequestMapping("/list")
    public void listForm(Map map){
        ArrayList<Product> list = service.searchAll();
        map.put("list", list);
    }

    @GetMapping("/add")
    public void addForm(){}

    @PostMapping("/add")
    public String add(Product p){
        service.add(p);
        return "redirect:/product/list";
    }

    @GetMapping("/detail")
    public void detailForm(int num, Map map){
        Product p = service.searcByNum(num);
        map.put("p", p);
    }

    @PostMapping("/edit")
    public String detailForm(Product p){
        service.edit(p);
        return "redirect:/product/list";
    }
    @GetMapping("/delete")
    public String delete(int num){
        service.delete(num);
        return "redirect:/product/list";
    }
    @PostMapping("/getBySeller")
    public String getBySeller(Member seller, Map map){
        ArrayList<Product> list = service.searchBySeller(seller);
        map.put("list", list);
        return "/product/list";
    }
    @PostMapping("/getByName")
    public String getByName(String name, Map map){
        ArrayList<Product> list = service.searchByName(name);
        map.put("list", list);
        return "/product/list";
    }

    @PostMapping("/getByPrice")
    public String getByPrice(int min,int max, Map map){
        ArrayList<Product> list = service.searchByPrice(min, max);
        map.put("list", list);
        return "/product/list";
    }
}
