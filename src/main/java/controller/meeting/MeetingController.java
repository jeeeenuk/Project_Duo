package controller.meeting;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MeetingController {
    @GetMapping("/meeting/meeting")
    public String meeting()
    {
        return "meeting/meeting";
    }
}
