package data.mapper;

import data.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface UserMapperInter {
    public void insertUser(Map<String, String> map);
    public void deleteUser(Map<String, String> map);
    public UserDto selectByID(Map<String, String> map);
    public int checkID(String searchID);
    public int isLoginCheck(String id, String pw);
    public List<UserDto> getRandomUser(String tableName);
    public int userFindTableM(String id);
    public int userFindTableFM(String id);
    public void userUpdateMatch(Map<String, String> map);
    public void insertMatchData(Map<String, String> map);
    public int userIsMatched(Map<String, String> map);
    public int getTotalCountFM();
    public int getTotalCountM();
}