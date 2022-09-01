package com.encore.oais.allboard;


import com.encore.oais.comments.Comments;
import com.encore.oais.comments.CommentsService;
import com.encore.oais.member.MemService;
import com.encore.oais.member.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
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

    @Value("${spring.servlet.multipart.location}")
    private String imgpath;

    @RequestMapping("/")
    public String list(Model model){
        ArrayList<AllBoard> list = service.getAllIdea();
        model.addAttribute("list", list);
        return "idea/list";
    }

    @GetMapping("/add")
    public void addForm(){}

    @PostMapping("/add")
    public String add(String title, Member num, String content, @DateTimeFormat(pattern="yyyy-MM-dd")Date ddate,
                      String hash, MultipartFile img1, MultipartFile img2, MultipartFile img3){
        AllBoard b = new AllBoard();
        b.setTitle(title);
        b.setNum(num);
        b.setContent(content);
        b.setDdate(ddate);
        b.setHash(hash);
        AllBoard b2 = service.addIdea(b);

        File dir = new File(imgpath + b2.getWnum());
        if (!dir.exists()) {
            dir.mkdir();// ���丮 ����
            System.out.println(dir.getPath());
        }
        ArrayList<MultipartFile> files = new ArrayList<MultipartFile>();
        files.add(img1);
        files.add(img2);
        files.add(img3);
        String[] paths = { null, null, null };// ���ε� ���� ���纻�� ��� ���� �迭
        int cnt = 0;
        for (MultipartFile f : files) {
            String fname = f.getOriginalFilename();// ���� ���ϸ�.
            File f2 = new File(dir.getPath() + "/" + fname);// ������ ������ ������ ������ ����
            try {
                f.transferTo(f2);// ������ ������ ���Ͽ� ����
                paths[cnt++] = fname;// ������ ������ ��θ� �迭 ����.
                System.out.println(paths[cnt - 1]);
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (paths[0] != null) {
                b.setImg1(paths[0]);
            }
            if (paths[1] != null) {
                b.setImg2(paths[1]);
            }
            if (paths[2] != null) {
                b.setImg3(paths[2]);
            }
            // ������ �߰��ߴ� ��ǰ�� �̹��� ��θ� �߰��� ����
            service.addIdea(b);
        }

        return "redirect:/idea/";
    }


    @GetMapping("/detail")
    public String detailForm(int wnum, Map m){
        AllBoard b = service.getByWnum(wnum);
        ArrayList<Comments> comments = c_service.getAll(b);
        m.put("b", b);
        m.put("comments", comments);
        b.setViews(b.getViews()+1);
        service.addAllBoard(b);
        return "idea/detailForm";
    }

    @PostMapping("/detail")
    public String addComments(int wnum, int num, String content){
        AllBoard b = service.getByWnum(wnum);
        b.setPart(b.getPart()+1);
        Member m = m_service.getByNum(num);
        Comments c = new Comments();
        c.setContent(content);
        c.setNum(m);
        c.setWnum(b);
        c_service.addComment(c);
        service.addAllBoard(b);
        return "redirect:/idea/detail?wnum="+wnum;
    }


    @GetMapping("/edit")
    public String editForm(int wnum, Map m){
        AllBoard b = service.getByWnum(wnum);
        m.put("b", b);
        return "idea/editForm";
    }

    @PostMapping("/edit")
    public String edit(int wnum, String title, String content, @DateTimeFormat(pattern="yyyy-MM-dd")Date ddate, String hash,
                       MultipartFile img1, MultipartFile img2, MultipartFile img3){
        AllBoard b = service.getByWnum(wnum);
        b.setTitle(title);
        b.setContent(content);
        b.setDdate(ddate);
        b.setHash(hash);

        if (img1!=null) {
            MultipartFile file = img1;
            String fname = file.getOriginalFilename();

            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + b.getWnum());
                File uploaded = new File(imgpath + b.getWnum() + "/" + b.getImg1());
                uploaded.delete();
                if (!dir.exists()) {
                    dir.mkdir();
                }

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    b.setImg1(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        if (img2!=null) {
            MultipartFile file = img2;
            String fname = file.getOriginalFilename();
            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + b.getWnum());
                File uploaded = new File(imgpath + b.getWnum() + "/" + b.getImg2());
                uploaded.delete();

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    b.setImg2(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        if (img3!=null) {
            MultipartFile file = img3;
            String fname = file.getOriginalFilename();
            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + b.getWnum());
                File uploaded = new File(imgpath + b.getWnum() + "/" + b.getImg3());
                uploaded.delete();

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    b.setImg3(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
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
        AllBoard b = service.getByWnum(wnum);
        b.setPart(b.getPart()-1);
        service.addAllBoard(b);
        return "redirect:/idea/detail?wnum="+wnum;
    }

    @GetMapping("/read_img") // �Ķ����� ���� �̹��� ���̳ʸ� ���� �о ��ȯ
    public ResponseEntity<byte[]> read_img(String fname, int wnum) {
        File f = new File(imgpath + wnum + "/" + fname);
        HttpHeaders header = new HttpHeaders();// http ��� ����
        ResponseEntity<byte[]> result = null;
        try {
            // ��� ���� �߰�. ���� ���� Ÿ�� ����.
            header.add("Content-Type", Files.probeContentType(f.toPath()));
            result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f), header, HttpStatus.OK);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

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
