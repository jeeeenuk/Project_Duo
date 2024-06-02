package controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardMeetingController {
    @GetMapping("/board/meeting")
    public String meeting()
    {
        return "board/meeting";
    }
}
