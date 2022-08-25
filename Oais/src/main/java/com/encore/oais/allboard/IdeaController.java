package com.encore.oais.allboard;


import com.encore.oais.comments.Comments;
import com.encore.oais.comments.CommentsService;
import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

@Controller
@RequestMapping("/idea")
public class IdeaController {

    @Autowired
    private AllBoardService service;

    @Autowired
    private CommentsService c_service;

    @Autowired
    private MemService m_service;


    @RequestMapping("/")
    public String list(Model model){
        ArrayList<AllBoard> list = service.getAllIdea();
        model.addAttribute("list", list);
        return "idea/list";
    }

    @GetMapping("/add")
    public void addForm(){}

    @PostMapping("/add")
    public String add(String title, Member num, String content, @DateTimeFormat(pattern="yyyy-MM-dd")Date ddate, String hash){
        AllBoard b = new AllBoard();
        b.setTitle(title);
        b.setNum(num);
        b.setContent(content);
        b.setDdate(ddate);
        b.setHash(hash);
        service.addIdea(b);
        return "redirect:/idea/";
    }


    @GetMapping("/detail")
    public String detailForm(int wnum, Map m){
        AllBoard b = service.getByWnum(wnum);
        AllBoard c = new AllBoard();
        c.setWnum(wnum);
        ArrayList<Comments> comments = c_service.getAll(c);
        System.out.println(comments);
        m.put("b", b);
        m.put("comments", comments);
        b.setViews(b.getViews()+1);
        service.addAllBoard(b);
        return "idea/detailForm";
    }

    @PostMapping("/detail")
    public String addComments(int wnum, int num, String content){
        AllBoard b = service.getByWnum(wnum);
        Member m = m_service.getByNum(num);
        Comments c = new Comments();
        c.setContent(content);
        c.setNum(m);
        c.setWnum(b);
        System.out.println(c);
        c_service.addComment(c);
        return "redirect:/idea/detail?wnum="+wnum;
    }


    @GetMapping("/edit")
    public String editForm(int wnum, Map m){
        AllBoard b = service.getByWnum(wnum);
        m.put("b", b);
        return "idea/editForm";
    }

    @PostMapping("/edit")
    public String edit(int wnum, String title, String content, @DateTimeFormat(pattern="yyyy-MM-dd")Date ddate, String hash){
        AllBoard b = service.getByWnum(wnum);
        System.out.println(b);
        b.setTitle(title);
        b.setContent(content);
        b.setDdate(ddate);
        b.setHash(hash);
        service.addAllBoard(b);
        return "redirect:/idea/detail?wnum="+wnum;
    }

    @GetMapping("/delete")
    public String delete(int wnum){
        service.delAllBoard(wnum);
        return "redirect:/idea/";
    }

    @GetMapping("/comment/delete")
    public String commentdelete(int cnum, int wnum){
        c_service.delConmment(cnum);
        return "redirect:/idea/detail?wnum="+wnum;
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
