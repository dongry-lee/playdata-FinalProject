//package com.encore.oais.allboard;
//
//
//import com.encore.oais.member.Member;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.beans.factory.annotation.Value;
//import org.springframework.http.HttpHeaders;
//import org.springframework.http.HttpStatus;
//import org.springframework.http.ResponseEntity;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.util.FileCopyUtils;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.io.File;
//import java.io.IOException;
//import java.nio.file.Files;
//import java.util.ArrayList;
//import java.util.Map;
//
//@Controller
//@RequestMapping("/board")
//public class BoardController {
//
//    @Autowired
//    private AllBoardService service;
//
//    @Value("${spring.servlet.multipart.location}")
//    private String img_path;
//    @RequestMapping("/")
//    public String list(Model model){
//        ArrayList<AllBoard> list = service.getAll();
//        model.addAttribute("list", list);
//        return "board/list";
//    }
//
//    @GetMapping("/add")
//    public void addForm(){}
//
////    @PostMapping("/add")
////    public String add(allBoard b){
////        allBoard b2 = service.addBoard(b);
////        if (b.getF()!=null) {
////            MultipartFile file = b.getF();
////
////            File dir = new File(img_path + b2.getNum());
////
////            if (!dir.exists()) {
////                dir.mkdir();
////                System.out.println(dir.getPath());
////            }
////
////            String fname = file.getOriginalFilename();
////            File f2 = new File(dir.getPath() + "/" + fname);
////
////            try {
////                file.transferTo(f2);
////                b2.setImg1(fname);
////
////            } catch (IllegalStateException e) {
////                // TODO Auto-generated catch block
////                e.printStackTrace();
////            } catch (IOException e) {
////                // TODO Auto-generated catch block
////                e.printStackTrace();
////            }
////
////            service.editBoard(b2);
////        }
////        return "redirect:/board/";
////    }
//
//    @GetMapping("/read_img") // �Ķ����� ���� �̹��� ���̳ʸ� ���� �о ��ȯ
//    public ResponseEntity<byte[]> read_img(String fname, int num) {
//        File f = new File(img_path + num + "/" + fname);
//        HttpHeaders header = new HttpHeaders();// http ��� ����
//        ResponseEntity<byte[]> result = null;
//        try {
//            // ��� ���� �߰�. ���� ���� Ÿ�� ����.
//            header.add("Content-Type", Files.probeContentType(f.toPath()));
//            result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f), header, HttpStatus.OK);
//        } catch (IOException e) {
//            // TODO Auto-generated catch block
//            e.printStackTrace();
//        }
//        return result;
//    }
//
//
//    @GetMapping("/detail")
//    public String detailForm(int num, Map m){
//        AllBoard b = service.getByNum(num);
//        m.put("b", b);
//        return "board/detailForm";
//    }
////
////    @PostMapping("/edit")
////    public String edit(allBoard b){
////
////        allBoard b3 = service.getByNum(b.getNum());
////        b3.setTitle(b.getTitle());
////        b3.setW_date(new Date());
////        b3.setContent(b.getContent());
////        b3.setHash(b.getHash());
////
////        if (b.getF()!=null) {
////
////            MultipartFile file = b.getF();
////            String fname = file.getOriginalFilename();
////            if (fname != null && !fname.equals("")) {
////                File dir = new File(img_path + b3.getNum());
////
////                File uploaded = new File(img_path + b3.getNum() + "/" + b3.getImg1());
////                uploaded.delete();
////                if (!dir.exists()) {
////                    dir.mkdir();
////                    System.out.println(dir.getPath());
////                }
////
////                File f2 = new File(dir.getPath() + "/" + fname);
////
////                try {
////                    file.transferTo(f2);
////                    b3.setImg1(fname);
////
////                } catch (IllegalStateException e) {
////                    // TODO Auto-generated catch block
////                    e.printStackTrace();
////                } catch (IOException e) {
////                    // TODO Auto-generated catch block
////                    e.printStackTrace();
////                }
////                service.editBoard(b3);
////
////            } else {
////                b.setW_date(new Date());
////                allBoard b2 = service.getByNum(b.getNum());
////                b.setF(b2.getF());
////                b.setImg1(b2.getImg1());
////                service.editBoard(b);
////            }
////        }
////        return "redirect:/board/";
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
//
//}
