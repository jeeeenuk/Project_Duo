package controller.complaint;

import data.dto.ComplaintDto;
import data.service.complaint.ComplaintService;
import data.service.user.UserService;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import lombok.Value;
import naver.cloud.NcpObjectStorageService;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequiredArgsConstructor
@RequestMapping("/complaint")
public class ComplaintAjaxController {
    @NonNull
    private ComplaintService complaintService;
    @NonNull
    private UserService userService;
    @NonNull
    private NcpObjectStorageService storageService;


    private String bucketName="bitcamp701-138";
    private String folderName="photo";

    @PostMapping("/addcomplaint")
    public void complaintInsert(
            @RequestParam String content,
            @RequestParam(value = "upload",required = false)List<MultipartFile> upload,
            @RequestParam String tableName,
            HttpSession session
            ) {
        String id = (String) session.getAttribute("loginID");
        String writer = userService.selectByID(id, tableName).getName();
        for (MultipartFile file : upload){
            ComplaintDto dto = ComplaintDto.builder()
                    .writer(writer)
                    .id(id)
                    .content(content)
                    .uploadphoto(storageService.uploadFile(bucketName,folderName,file))
                    .build();
            complaintService.insertComplaint(dto);
        }
    }

       @GetMapping("/datas")
               public List<ComplaintDto> compliant_List()
        {
            List<ComplaintDto> clist=complaintService.getAllComplaint();
            return clist;
        }

}
