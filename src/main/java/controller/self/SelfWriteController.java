package controller.self;

import data.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class SelfWriteController {
    @Autowired
    private UserService userService;

    @GetMapping("self/form")
    public String form()
    {
        return "self/writeform";
    }
//    @PostMapping("/insert")
//    public String insert()
//    {
//
//    }

}
