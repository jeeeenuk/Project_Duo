package data.service.complaint;

import data.dto.ComplaintDto;
import data.mapper.ComplaintMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ComplaintService {
    @Autowired
    private ComplaintMapperInter complaintMapperInter;

    public void insertComplaint(ComplaintDto dto)
    {
        complaintMapperInter.insertComplaint(dto);
    }

    public List<ComplaintDto> getAllComplaint()
    {
        return complaintMapperInter.getAllComplaint();
    }

}
