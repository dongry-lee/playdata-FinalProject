package com.encore.deeppocket.board;


import com.encore.deeppocket.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService service;

    @Value("${spring.servlet.multipart.location}")
    private String img_path;

    @GetMapping("/add")
    public void addForm(){}

    @PostMapping("/add")
    public String add(Board b){
        Board b2 = service.addBoard(b);
        if (b.getF()!=null) {
            MultipartFile file = b.getF();

            File dir = new File(img_path + b2.getNum());

            if (!dir.exists()) {
                dir.mkdir();
                System.out.println(dir.getPath());
            }

            String fname = file.getOriginalFilename();
            File f2 = new File(dir.getPath() + "/" + fname);
            try {
                file.transferTo(f2);
                String path = fname;

            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }

            service.editBoard(b2);
        }
        return "redirect:/board/";
    }

    @RequestMapping("/")
    public String list(Model model){
        ArrayList<Board> list = service.getAll();
        model.addAttribute("list", list);
        return "board/list";
    }

    @ResponseBody
    @GetMapping("/getByNum")
    public Map getByNum(int num){
        Map map = new HashMap();
        Board b = service.getByNum(num);
        map.put("num",b.getNum());
        map.put("writer", b.getWriter());
        map.put("w_date", b.getW_date());
        map.put("title", b.getTitle());
        map.put("content", b.getContent());
        return map;
    }

    @GetMapping("/detail")
    public String detailForm(int num, Map m){
        Board b = service.getByNum(num);
        m.put("num", b.getNum());
        m.put("writer", b.getWriter());
        m.put("w_date", b.getW_date());
        m.put("title", b.getTitle());
        m.put("content", b.getContent());
        return "board/detailForm";
    }

    @PostMapping("/edit")
    public String edit(Board b){
        b.setW_date(new Date());
        service.editBoard(b);
        return "redirect:/board/";
    }

    @GetMapping("/delete")
    public String delete(int num){
        service.delBoard(num);
        return "redirect:/board/";
    }
    @PostMapping("/getbywriter")
    public String getbywriter(String val, Map map){
        Member m = new Member();
        m.setId(val);
        ArrayList<Board> list = service.getByWriter(m);
        map.put("list", list);
        return "board/list";
    }
    @PostMapping("/getbytitle")
    public String getbytitle(String val, Map map){
        ArrayList<Board> list = service.getByTitle(val);
        map.put("list", list);
        return "board/list";
    }

}
