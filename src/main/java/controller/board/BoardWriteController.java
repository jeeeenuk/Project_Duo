package controller.board;

import data.dto.ReBoardDto;
import data.service.board.ReBoardService;
import data.service.user.UserService;
import naver.cloud.NcpObjectStorageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/board")
public class BoardWriteController {
    @Autowired
    private ReBoardService boardService;

    @Autowired
    private UserService userService;

    private String bucketName="bitcamp701-138";
    private String folderName="photo";

    @Autowired
    private NcpObjectStorageService storageService;

    @GetMapping("/form")
    public String form(
            //새글일경우 null 값들이 넘어오므로 초기값을 지정한다
            //답글일경우는 원글이 갖고있는 각종 정보가 넘어온다
            @RequestParam(defaultValue = "0") int num,
            @RequestParam(defaultValue = "0") int regroup,
            @RequestParam(defaultValue = "0") int restep,
            @RequestParam(defaultValue = "0") int relevel,
            @RequestParam(defaultValue = "1") int currentPage,
            Model model
    )
    {
        //답글일경우 제목을 얻어서 model 에 저장한다
        String subject="";
        if(num>0) {
            subject="[답글]"+boardService.getData(num).getSubject();
        }
        model.addAttribute("num",num);
        model.addAttribute("regroup",regroup);
        model.addAttribute("restep",restep);
        model.addAttribute("relevel",relevel);
        model.addAttribute("currentPage",currentPage);
        model.addAttribute("subject",subject);

        return "board/writeform";
    }

    @PostMapping("/insert")
    public String insert(
            @ModelAttribute ReBoardDto dto,
            @RequestParam("upload") MultipartFile upload,
            @RequestParam int currentPage,
            HttpServletRequest request,
            HttpSession session
    )
    {
        String photo=storageService.uploadFile(bucketName, folderName, upload);
        dto.setUploadphoto(photo);

        //로그인한 아이디 얻기
        String loginID=(String)session.getAttribute("loginID");
        String tableName = userService.userUpdateFindTable(loginID);
        System.out.println(tableName);
        dto.setMyid(loginID);
        //아이디에 해당하는 이름 얻기
        String writer=userService.selectByID(loginID, tableName).getName();
        System.out.println(writer);
        //member db 로부터 아이디에 해당하는 이름을 얻어서 dto 에 저장
        dto.setWriter(writer);

        //db insert
        boardService.insertBoard(dto);

        //확인할거...추가후 저장된 시퀀스값
        System.out.println("num="+dto.getNum());

        //return "redirect:./list?currentPage="+currentPage;

        //추가후 상세페이지로 이동
        return "redirect:./detail?num="+dto.getNum()+"&currentPage="+currentPage;
    }
}