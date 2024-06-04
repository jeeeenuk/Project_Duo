package data.mapper;

import data.dto.SelfDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SelfMapperInter {
    public List<SelfDto> getM_userData();
    public List<SelfDto> getFm_userData();
}
