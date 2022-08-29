package com.encore.oais.member;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.allboard.AllBoardService;
import com.encore.oais.comments.Comments;
import com.encore.oais.comments.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/member")
public class MemController {

    @Autowired
    private MemService service;

    @Autowired
    private AllBoardService a_service;

    @Autowired
    private CommentsService c_service;


    @GetMapping("/login")
    public String loginForm(){
        return "member/loginForm";
    }

    @PostMapping("/login")
    public String login(String id, String pwd, HttpSession session, Map map) {
        // TODO Auto-generated method stub
        ArrayList<Member> list= service.getMember(id);
        String msg = "";
        String path = "";
        if (!list.isEmpty()) {
            Member m = list.get(0);

            if (m.getPwd().equals(pwd)) {
                session.setAttribute("id", id);
                session.setAttribute("name", m.getName());
                session.setAttribute("num", m.getNum());
                session.setAttribute("domtype", m.isDomtype());
                path = "redirect:/";
            } else {
                msg = "비밀번호가 틀렸습니다";
                path = "member/loginForm";
            }
         } else {
            msg = "존재하지않는 id입니다.";
            path = "member/loginForm";
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
        service.join(m);
        return "redirect:/";
    }



    @GetMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }

//    @PostMapping("/edit")
//    public String edit(Member m){
//        service.editMember(m);
//        return "redirect:/";
//    }

    @RequestMapping("/out")
    public String out(HttpSession session){
        String id = (String) session.getAttribute("id");
        service.delMember(id);
        return "redirect:/member/logout";
    }

//    @GetMapping("/idcheck")
//
//    public void idcheck(String id, Model model){
//        ArrayList<Member> list = service.getMember(id);
//        boolean flag = false;
//        if(!list.isEmpty()){
//            flag = true;
//            model.addAttribute("id", id);}
//        model.addAttribute("flag", flag);
//    }


    @ResponseBody
    @GetMapping("/idcheck2")
    public Map idcheck2(String id) {
        Map map = new HashMap();
        ArrayList<Member> list = service.getMember(id);
        boolean flag = false;
        if (!list.isEmpty()) {
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

    @GetMapping("/mypage")
    public String mypageForm(HttpSession session, Map mm){
        int num = (int) session.getAttribute("num");
        Member m = service.getByNum(num);
        ArrayList<AllBoard> myUploadList = a_service.getByNum(num);
        ArrayList<Comments> myPartList = c_service.getByNum(num);
        mm.put("m", m);
        mm.put("myUploadList", myUploadList);
        mm.put("myPartList", myPartList);
        return "member/mypageForm";
    }

//    @GetMapping("/detail")
//    public String detail(HttpSession session, Model mm){
//        String id = (String) session.getAttribute("id");
//        ArrayList<Member> list = service.getMember(id);
//        Member m = list.get(0);
//        mm.addAttribute("m", m);
//        return "member/detail";
//    }

    @PostMapping("/mypage")
    public String edit(HttpSession session, String name){
        int num = (int) session.getAttribute("num");
        Member m = service.getByNum(num);
        m.setName(name);
        service.editMember(m);
    return "redirect:/member/mypage";
    }
}

