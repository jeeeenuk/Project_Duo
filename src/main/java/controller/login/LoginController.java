package controller.login;

import data.service.matching.MatchingService;
import data.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    @Autowired
    private UserService userService;
    @Autowired
    private MatchingService matchingService;

    @ResponseBody
    @GetMapping("/user/login")
    public Map<String, String> isLogin(@RequestParam(defaultValue = "no") String saveID, // null 값이 넘어울 경우 default 값으로 적용
                                      @RequestParam String myID,
                                      @RequestParam String myPW,
                                      HttpSession session) {
        Map<String, String> map = new HashMap<>();
        // 로그인 상태
        boolean loginStatus = userService.isLoginCheck(myID, myPW);
        if(loginStatus){
            // 아이디와 비밀번호가 맞았을 경우
            map.put("status","success");
            // 로그인 성공시 세션에 저장
            session.setAttribute("saveID", saveID.equals("no")?"no":"yes");
            session.setAttribute("loginOK", "yes");
            session.setAttribute("loginID", myID);
        } else {
            // 아이디와 비밀번호가 틀렸을 경우
            map.put("status","fail");
        }
        return map;
    }
    @ResponseBody
    @GetMapping("/user/logout")
    public void logout(HttpSession session){
        session.removeAttribute("loginOK");
    }
    @GetMapping("/main/login")
    public String login(Model model){
        int totalMatched = matchingService.getTotalMatched();
        double caculateRation = userService.calculateRatio();
        model.addAttribute("caculateRation", caculateRation);
        model.addAttribute("totalMatched", totalMatched);
        return "layout/main";
    }
}
