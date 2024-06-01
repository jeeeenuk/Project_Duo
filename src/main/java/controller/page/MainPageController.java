package controller.page;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainPageController {
    @GetMapping("/layout")
    public String mainPage(){
        return "layout/main";
    }
}
