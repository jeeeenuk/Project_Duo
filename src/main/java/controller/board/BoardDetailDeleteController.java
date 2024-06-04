package controller.board;

import data.dto.ReBoardDto;
import data.service.board.ReBoardService;
import data.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/board")
public class BoardDetailDeleteController {
    @Autowired
    private ReBoardService boardService;
    @Autowired
    private UserService userService;
    @GetMapping("/detail")
    public String detail(
            @RequestParam int num,
            @RequestParam int currentPage,
            @RequestParam String tableName,
            Model model
            )
    {
        //조회수 증가
//        boardService.updateBoard(num);
        //num 에 해당하는 글 가져오기
        ReBoardDto dto=boardService.getData(num);
        //해당 아이디가 갖고 있는 프로필 사진 가져오기
        String profile_photo=userService.selectByID(dto.getMyid(), tableName).getPhoto();



        model.addAttribute("profile_photo",profile_photo);
        model.addAttribute("dto",dto);
        model.addAttribute("currentPage",currentPage);
        return "board/detailpage";
    }
    @GetMapping("/delete")
    public String delete(@RequestParam int num,@RequestParam int currentPage)
    {
        boardService.deleteBoard(num);
        return "redirect:./list?currentPage="+currentPage;
    }
}
