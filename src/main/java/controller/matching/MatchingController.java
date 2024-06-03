package controller.matching;

import data.dto.UserDto;
import data.service.user.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequiredArgsConstructor
public class MatchingController {
    @NonNull
    private UserService userService;
    @GetMapping("matching/matching")
    public String matching()
    {
        return "matching/matching";
    }

    @GetMapping("matching/randomMatch")
    public String getRandomUser(Model model,
                                HttpSession session){
        String id = (String)session.getAttribute("loginID");
        String tableName = userService.userFindTable(id);
        List<UserDto> list = userService.getRandomUser(tableName);

        model.addAttribute("tableName",tableName);

        model.addAttribute("list", list);
        return "matching/matching";
    }

    @GetMapping("matching/completeMatch")
    public void updateMatch(@RequestParam HttpSession session){

    }
}
