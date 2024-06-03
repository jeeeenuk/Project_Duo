package data.mapper;

import data.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.Map;

@Mapper
public interface UserMapperInter {
    public void insertUser(Map<String, String> map);
    public void deleteUser(Map<String, String> map);
    public UserDto selectByID(Map<String, String> map);
    public int checkID(String searchID);
    public int isLoginCheck(String id, String pw);

}