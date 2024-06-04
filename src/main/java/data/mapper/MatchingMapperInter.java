package data.mapper;

import data.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MatchingMapperInter {
    public int getTotalMatched();
    public UserDto selectMatchedByMyID(String id);
    public UserDto selectMatchedByOtherID(String id);
}
