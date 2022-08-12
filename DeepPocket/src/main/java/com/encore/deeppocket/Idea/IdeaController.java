package com.encore.deeppocket.Idea;


import com.encore.deeppocket.board.Board;
import org.springframework.beans.factory.annotation.Autowired;
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
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/idea")
public class IdeaController {

    @Autowired
    private IdeaService service;

    @GetMapping("/list") //Idea 등록 창 이동
    public void list(){}



    @RequestMapping("/")
    public String list(Model model){
        ArrayList<Idea> list = service.getAll();
        model.addAttribute("list", list);
        return "idea/list";
    }
}
