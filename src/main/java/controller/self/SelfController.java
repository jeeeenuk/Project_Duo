package controller.self;

import data.dto.SelfDto;
import data.service.self.SelfService;
import data.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class SelfController {


    @Autowired
    private SelfService selfService;
    @GetMapping("self/self")
    public String self(
            Model model)
    {
        List<SelfDto> mlist= selfService.getM_userMembers();
        List<SelfDto> fmlist= selfService.getFm_userMembers();


        model.addAttribute("mlist",mlist);
        model.addAttribute("fmlist",fmlist);
        return "self/self";
    }
}
