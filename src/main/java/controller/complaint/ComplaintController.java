package controller.complaint;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ComplaintController {
    @GetMapping("complaint/complaint")
    public String complaint()
    {
        return "complaint/complaint";
    }
}
