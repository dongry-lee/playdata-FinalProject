package com.encore.oais.allboard;


import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Map;

@Controller
@RequestMapping("/idea")
public class IdeaController {

    @Autowired
    private AllBoardService service;

    @RequestMapping("/")
    public String list(Model model){
        ArrayList<AllBoard> list = service.getAllIdea();
        model.addAttribute("list", list);
        return "idea/list";
    }

    @GetMapping("/add")
    public void addForm(){}

    @PostMapping("/add")
    public String add(AllBoard b){
        service.addIdea(b);
        return "redirect:/board/";
    }


    @GetMapping("/detail")
    public String detailForm(int wnum, Map m){
        AllBoard b = service.getByNum(wnum);
        m.put("b", b);
        return "idea/detailForm";
    }


    @GetMapping("/edit")
    public String editForm(int wnum, Map m){
        AllBoard b = service.getByNum(wnum);
        m.put("b", b);
        return "idea/editForm";
    }

    @PostMapping("/edit")
    public String edit(){

        return "idea/editForm";
    }
////    @GetMapping("/read_img") // �Ķ����� ���� �̹��� ���̳ʸ� ���� �о ��ȯ
////    public ResponseEntity<byte[]> read_img(String fname, int num) {
////        File f = new File(img_path + num + "/" + fname);
////        HttpHeaders header = new HttpHeaders();// http ��� ����
////        ResponseEntity<byte[]> result = null;
////        try {
////            // ��� ���� �߰�. ���� ���� Ÿ�� ����.
////            header.add("Content-Type", Files.probeContentType(f.toPath()));
////            result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f), header, HttpStatus.OK);
////        } catch (IOException e) {
////            // TODO Auto-generated catch block
////            e.printStackTrace();
////        }
////        return result;
////    }



//
//    @GetMapping("/delete")
//    public String delete(int num){
//        service.delBoard(num);
//        return "redirect:/board/";
//    }
//
////    @ResponseBody
////    @GetMapping("/getByNum")
////    public Map getByNum(int num){
////        Map map = new HashMap();
////        allBoard b = service.getByNum(num);
////        map.put("num",b.getNum());
////        map.put("writer", b.getWriter());
////        map.put("w_date", b.getW_date());
////        map.put("title", b.getTitle());
////        map.put("content", b.getContent());
////        return map;
////    }
//    @PostMapping("/getbywriter")
//    public String getbywriter(String val, Map map){
//        Member m = new Member();
//        m.setMid(val);
//        ArrayList<AllBoard> list = service.getByWriter(m);
//        map.put("list", list);
//        return "board/list";
//    }
//    @PostMapping("/getbytitle")
//    public String getbytitle(String val, Map map){
//        ArrayList<AllBoard> list = service.getByTitle(val);
//        map.put("list", list);
//        return "board/list";
//    }
//
//    @PostMapping("/getbyall")
//    public String getbyall(String val, Map map){
//        ArrayList<AllBoard> titleList = service.getByTitle(val);
//        ArrayList<AllBoard> hashList = service.getByHash(val);
//        ArrayList<AllBoard> contentList = service.getByContent(val);
//
//        Member m = new Member();
//        m.setMid(val);
//        ArrayList<AllBoard> memberList = service.getByWriter(m);
//
//        map.put("titleList", titleList);
//        map.put("hashList", hashList);
//        map.put("memberList", memberList);
//        map.put("contentList", contentList);
//
//        return "board/list";
//    }

}