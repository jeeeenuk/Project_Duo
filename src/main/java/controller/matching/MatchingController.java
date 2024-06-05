package controller.matching;

import data.dto.UserDto;
import data.service.matching.MatchingService;
import data.service.user.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Controller
@RequiredArgsConstructor
public class MatchingController {
    @NonNull
    private UserService userService;
    @NonNull
    private MatchingService matchingService;

    @GetMapping("matching/matching")
    public String matching(HttpSession session,
                           Model model) {
        String loginID = (String) session.getAttribute("loginID");
        String tableName = userService.userUpdateFindTable(loginID);
        model.addAttribute("tableName", tableName);

        int totalMatched = matchingService.getTotalMatched();
        model.addAttribute("totalMatched", totalMatched);
        return "matching/matching";
    }

    @GetMapping("matching/randomMatch")
    public String getRandomUser(Model model,
                                HttpSession session) {
        String id = (String) session.getAttribute("loginID");
        String tableName = userService.userFindTable(id);
        String userUpdateFindTable = userService.userUpdateFindTable(id);
        int userIsMatched = userService.userIsMatched(id, userUpdateFindTable);
        List<UserDto> list = userService.getRandomUser(tableName);
        model.addAttribute("userIsMatched", userIsMatched);
        model.addAttribute("tableName", tableName);
        model.addAttribute("list", list);

        Map<String, UserDto> map = matchingService.matchingData(id);
        model.addAttribute("myDto", map.get("myDto"));
        model.addAttribute("otherDto", map.get("otherDto"));
        return "matching/matching";
    }

    @GetMapping("matching/completeMatch")
    public String updateMatch(
                              @RequestParam String id,
                              HttpSession session) {
        String loginID = (String) session.getAttribute("loginID");
        userService.userUpdateMatch(loginID, id);
        return "redirect:/matching/matching";
    }
    @GetMapping("matching/payment")
    @ResponseBody
    public Map<String,String> payment(@RequestParam("bank") String bank) {
        Map<String, String> map = new HashMap<>();
        map.put("bank", bank + " : " + UUID.randomUUID());
        return map;
    }
}
