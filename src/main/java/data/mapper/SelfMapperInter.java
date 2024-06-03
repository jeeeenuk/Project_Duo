package data.mapper;

import data.dto.ComplaintDto;
import data.dto.SelfDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SelfMapperInter {
    public void insertSelf(SelfDto dto);
    public List<SelfDto> getAllSelf();
}
