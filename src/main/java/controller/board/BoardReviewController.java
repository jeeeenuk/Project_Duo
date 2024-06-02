package controller.board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardReviewController {
    @GetMapping("/board/review")
    public String review()
    {
        return "board/review";
    }
}
