package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Alias("UserDto")
public class UserDto {
    private String id;
    private String pw;
    private String name;
    private String email;
    private String addr;
    private String hp;
    private String birthday;
    private String photo;
    private Timestamp joinDay;
    private boolean match;
}
