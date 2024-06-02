package controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardSelfController {
    @GetMapping("/board/self")
    public String self()
    {
        return "board/self";
    }
}
