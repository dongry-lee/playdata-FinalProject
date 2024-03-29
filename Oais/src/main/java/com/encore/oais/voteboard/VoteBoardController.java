package com.encore.oais.voteboard;

import com.encore.oais.allboard.AllBoard;
import com.encore.oais.member.Member;
import com.encore.oais.voteboard.votecomment.VoteComment;
import com.encore.oais.voteboard.votecomment.VoteCommentService;
import com.encore.oais.voteboard.voteresult.VoteResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;

@Controller
public class VoteBoardController {
    @Autowired
    private VoteBoardService voteBoardService;
    @Autowired
    private VoteCommentService voteCommentService;

    @Autowired
    private VoteResultService voteResultService;

    @Value("${spring.servlet.multipart.location}")
    private String imgpath;


    @RequestMapping("/voteboard")
    public String VoteBoard() {
        return "vote/list";

    }

    @GetMapping("/voteboard/write")
    public String VoteBoardFrom() {
        return "vote/vote";

    }

    @PostMapping("/voteboard/writepro")
    public String boardWritePro(String title, Member num, String content, @DateTimeFormat(pattern = "yyyy-MM-dd") Date ddate,
                                String item01, String item02, String item03, String item04, String hash, MultipartFile img1, MultipartFile img2, MultipartFile img3) {
        VoteBoard voteBoard = new VoteBoard();
        voteBoard.setTitle(title);
        voteBoard.setHash(hash);
        voteBoard.setDdate(ddate);
        voteBoard.setContent(content);
        voteBoard.setItem01(item01);
        voteBoard.setItem02(item02);
        voteBoard.setItem03(item03);
        voteBoard.setItem04(item04);
        voteBoard.setNum(num);

        VoteBoard voteBoard2 = voteBoardService.write(voteBoard);

        File dir = new File(imgpath + voteBoard2.getWnum());
        if (!dir.exists()) {
            dir.mkdir();
            System.out.println(dir.getPath());
        }
        ArrayList<MultipartFile> files = new ArrayList<MultipartFile>();
        files.add(img1);
        files.add(img2);
        files.add(img3);
        String[] paths = {null, null, null};
        int cnt = 0;
        for (MultipartFile f : files) {
            String fname = f.getOriginalFilename();
            File f2 = new File(dir.getPath() + "/" + fname);// ������ ������ ������ ������ ����
            try {
                f.transferTo(f2);
                paths[cnt++] = fname;
                System.out.println(paths[cnt - 1]);
            } catch (IllegalStateException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } catch (IOException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            if (paths[0] != null) {
                voteBoard.setImg1(paths[0]);
            }
            if (paths[1] != null) {
                voteBoard.setImg2(paths[1]);
            }
            if (paths[2] != null) {
                voteBoard.setImg3(paths[2]);
            }

            voteBoardService.write(voteBoard);
        }


        return "redirect:/voteboard/list";
    }

    @GetMapping("/read_img")
    public ResponseEntity<byte[]> read_img(String fname, int wnum) {
        File f = new File(imgpath + wnum + "/" + fname);
        HttpHeaders header = new HttpHeaders();// http ��� ����
        ResponseEntity<byte[]> result = null;
        try {
            header.add("Content-Type", Files.probeContentType(f.toPath()));
            result = new ResponseEntity<byte[]>(FileCopyUtils.copyToByteArray(f), header, HttpStatus.OK);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return result;
    }

    @GetMapping("/voteboard/list")
    public String boardList(Map map) {

        map.put("itemlist", voteBoardService.getAll());
        return "vote/list";

    }

    @GetMapping("/voteboard/detail")
    public String getComment(int wnum, Map map) {
        VoteBoard voteboard = voteBoardService.getBywnum(wnum);
        voteboard.setViews(voteboard.getViews() + 1);
        voteBoardService.write(voteboard); //조회수 1씩증가
        long item01result = voteResultService.getCount(voteboard.getItem01());
        long item02result = voteResultService.getCount(voteboard.getItem02());
        if (voteboard.getItem03() != null){
            long item03result = voteResultService.getCount(voteboard.getItem03());
            map.put("item03result", item03result);
        }
        if (voteboard.getItem04() != null){
            long item04result = voteResultService.getCount(voteboard.getItem04());
            map.put("item04result", item04result);
        }

        map.put("voteboard", voteBoardService.getBywnum(wnum));
        map.put("votecomment", voteCommentService.getByComment(wnum));
        map.put("item01result", item01result);
        map.put("item02result", item02result);


        return "vote/votedetail";
    }


    @GetMapping("/voteboard/delVoteBoard")
    public String delVoteBoard(int wnum) {

        voteBoardService.delvoteboard(wnum);

        return "redirect:/voteboard/list";
    }

    @GetMapping("/voteboard/edit") //수정
    public String editBoard(int wnum, Map map) {

        VoteBoard voteBoard = voteBoardService.getBywnum(wnum);
        map.put("voteboard", voteBoard);

        return "vote/voteedit";
    }

    @PostMapping("/voteboard/edit")
    public String edit(int wnum, String title, String content, @DateTimeFormat(pattern = "yyyy-MM-dd") Date ddate,
                       String item01, String item02, String item03, String item04, String hash, MultipartFile img1, MultipartFile img2, MultipartFile img3) {
        VoteBoard voteBoard = voteBoardService.getBywnum(wnum);
        voteBoard.setTitle(title);
        voteBoard.setContent(content);
        voteBoard.setDdate(ddate);
        voteBoard.setHash(hash);
        voteBoard.setItem01(item01);
        voteBoard.setItem02(item02);
        voteBoard.setItem03(item03);
        voteBoard.setItem04(item04);

        if (img1 != null) {
            MultipartFile file = img1;
            String fname = file.getOriginalFilename();

            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + voteBoard.getWnum());
                File uploaded = new File(imgpath + voteBoard.getWnum() + "/" + voteBoard.getImg1());
                uploaded.delete();
                if (!dir.exists()) {
                    dir.mkdir();
                }

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    voteBoard.setImg1(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        if (img2 != null) {
            MultipartFile file = img2;
            String fname = file.getOriginalFilename();
            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + voteBoard.getWnum());
                File uploaded = new File(imgpath + voteBoard.getWnum() + "/" + voteBoard.getImg2());
                uploaded.delete();

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    voteBoard.setImg2(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }
        if (img3 != null) {
            MultipartFile file = img3;
            String fname = file.getOriginalFilename();
            if (fname != null && !fname.equals("")) {
                File dir = new File(imgpath + voteBoard.getWnum());
                File uploaded = new File(imgpath + voteBoard.getWnum() + "/" + voteBoard.getImg3());
                uploaded.delete();

                File f2 = new File(dir.getPath() + "/" + fname);

                try {
                    file.transferTo(f2);
                    voteBoard.setImg3(fname);

                } catch (IllegalStateException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                } catch (IOException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }
            }
        }

        voteBoardService.write(voteBoard);
        voteResultService.deletWnum(wnum);

        return "redirect:/voteboard/list";
    }




}
