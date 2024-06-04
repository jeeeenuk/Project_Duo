package data.mapper;

import data.dto.ComplaintDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface ComplaintMapperInter {
    public void insertComplaint(ComplaintDto dto);
    public List<ComplaintDto> getAllComplaint();
}
