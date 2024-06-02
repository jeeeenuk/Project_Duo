package controller.matching;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MatchingController {
    @GetMapping("matching/matching")
    public String matching()
    {
        return "matching/matching";
    }
}
