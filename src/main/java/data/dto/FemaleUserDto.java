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
@Alias("FemaleUserDto")
public class FemaleUserDto {
    private String fm_id;
    private String fm_pw;
    private String fm_name;
    private String fm_email;
    private String fm_addr;
    private String fm_hp;
    private String fm_birthday;
    private String fm_photo;
    private Timestamp fm_joinDay;
    private boolean fm_match;
}
