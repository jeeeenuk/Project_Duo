package data.service.user;

import data.dto.UserDto;
import data.mapper.UserMapperInter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@RequiredArgsConstructor
public class UserService {
    private final UserMapperInter userMapperInter;

    public void insertUser(UserDto dto, String tableName) {
        Map<String, String> map = new HashMap<>();
        map.put("id", dto.getId());
        map.put("pw", dto.getPw());
        map.put("name", dto.getName());
        map.put("email", dto.getEmail());
        map.put("hp", dto.getHp());
        map.put("birthday", dto.getBirthday());
        map.put("photo", dto.getPhoto());
        map.put("tableName", tableName);
        userMapperInter.insertUser(map);
    }

    public void deleteUser(String id, String tableName) {
        Map<String, String> map = new HashMap<>();
        map.put("id", id);
        map.put("tableName", tableName);
        userMapperInter.deleteUser(map);
    }

    public UserDto selectByID(String id, String tableName) {
        Map<String, String> map = new HashMap<>();
        map.put("id", id);
        map.put("tableName", tableName);
        return userMapperInter.selectByID(map);
    }

    public int checkID(String searchID) {
        return userMapperInter.checkID(searchID);
    }

    public boolean isLoginCheck(String id, String pw) {
        return userMapperInter.isLoginCheck(id, pw) == 1;
    }

    public List<UserDto> getRandomUser(String tableName) {
        return userMapperInter.getRandomUser(tableName);
    }

    public String userFindTable(String id) {
        if (userMapperInter.userFindTableM(id) == 1) {
            return "fm_user";
        } else if (userMapperInter.userFindTableFM(id) == 1) {
            return "m_user";
        } else {
            return null;
        }
    }
    public String userUpdateFindTable(String id){
        if (userMapperInter.userFindTableM(id) == 1) {
            return "m_user";
        } else if (userMapperInter.userFindTableFM(id) == 1) {
            return "fm_user";
        } else {
            return null;
        }
    }

    public void userUpdateMatch(String myID, String otherID) {
        String myTableName = userUpdateFindTable(myID);
        String otherTableName = userUpdateFindTable(otherID);
        Map<String, String> map = new HashMap<>();
        map.put("id", myID);
        map.put("tableName", myTableName);
        System.out.println(map.get("id") + " " + map.get("tableName"));
        userMapperInter.userUpdateMatch(map);
        map.put("id", otherID);
        map.put("tableName", otherTableName);
        System.out.println(map.get("id") + " " + map.get("tableName"));
        userMapperInter.userUpdateMatch(map);

        if (myTableName.equals("m_user")) {
            map.put("m_id", myID);
            map.put("fm_id", otherID);
        } else {
            map.put("m_id", otherID);
            map.put("fm_id", myID);
        }

        userMapperInter.insertMatchData(map);
    }
}
