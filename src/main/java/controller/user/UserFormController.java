package controller.user;

import data.dto.UserDto;
import data.mapper.UserMapperInter;
import data.naver.cloud.NcpObjectStorageService;
import data.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.HashMap;
import java.util.Map;

@Controller
public class UserFormController {
    @Autowired
    private UserService userService;

    private String bucketName = "bitcamp701-138";
    private String folderName="photo";
    @Autowired
    private NcpObjectStorageService storageService;

    @PostMapping("/user/insert")
    public String insertUser(@ModelAttribute UserDto dto,
                             @RequestParam("tableName") String tableName,
                             @RequestParam("myFile") MultipartFile myFile){
        String photo = storageService.uploadFile(bucketName, folderName, myFile);
        dto.setPhoto(photo);
        userService.insertUser(dto, tableName);
        return "layout/main";
    }

    @PostMapping("/user/delete")
    public void deleteUser(@RequestParam("id") String id,
                             @RequestParam("tableName") String tableName){
        UserDto userDto = userService.selectByID(id, tableName);
        storageService.deleteFile(bucketName, folderName, userDto.getPhoto());
        userService.deleteUser(id, tableName);
    }

    @ResponseBody
    @GetMapping("/user/checkID")
    public Map<String, Integer> map (@RequestParam("searchID") String searchID){
        Map<String, Integer> map = new HashMap<>();
        int count = userService.checkID(searchID);
        map.put("count", count);
        return map;
    }
}
