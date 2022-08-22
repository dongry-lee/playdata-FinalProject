package com.encore.oais.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/member")
public class MemController {

    @Autowired
    private MemService service;

    @GetMapping("/login")
    public String loginForm(){
        return "member/loginForm";
    }

    @PostMapping("/login")
    public String login(String id, String pwd, HttpSession session, Map map) {
        // TODO Auto-generated method stub

        Member m = service.getMember(id);

        String msg = "";
        String path ="";
        if (m != null) {
            if (m.getPwd().equals(pwd)) {
                session.setAttribute("id", id);
                session.setAttribute("mem_type", m.isMem_type());
                path =  "redirect:/";
            } else {
                msg = "비밀번호가 틀렸습니다";
                path = "member/loginForm";
            }
        } else {
            msg = "존재하지않는 id입니다.";
            path =  "member/loginForm";
        }
        map.put("msg", msg);
        return path;
    }


    @GetMapping("/join")
    public String joinForm(){
        return "member/joinForm";
    }

    @PostMapping("/join")
    public String join(Member m, Map map){
        String msg = "";
        if(service.getMember(m.getId()) != null){
            msg = "이미 존재하는 id입니다";
            map.put("msg", msg);
            return "member/joinForm";
        }else{
        service.join(m);
        return "redirect:/";}
    }

    @GetMapping("/detail")
    public String detail(HttpSession session, Model mm){
        String id = (String) session.getAttribute("id");
        Member m = service.getMember(id);
        mm.addAttribute("m", m);
        return "member/detail";
    }

    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

    @PostMapping("/edit")
    public String edit(Member m){
        service.editMember(m);
        return "redirect:/";
    }

    @RequestMapping("/out")
    public String out(HttpSession session){
        String id = (String) session.getAttribute("id");
        service.delMember(id);
        return "redirect:/member/logout";
    }

    @GetMapping("/idcheck")

    public void idcheck(String id, Model model){
        Member m = service.getMember(id);
        boolean flag = false;
        if(m==null){
            flag = true;
            model.addAttribute("id", id);
        }
        model.addAttribute("flag", flag);
    }


    @ResponseBody
    @GetMapping("/idcheck2")
    public Map idcheck2(String id) {
        Map map = new HashMap();
        Member m = service.getMember(id);
        boolean flag = false;
        if (m == null) {
            flag = true;
            map.put("id", id);
        }
        map.put("flag", flag);
        return map;
    }
    //회원가입
    //로그인
    //내정보확인 및 수정
    //로그아웃 / 탈퇴
}

