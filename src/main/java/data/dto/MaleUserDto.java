package data.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Alias("MaleUserDto")
public class MaleUserDto {
    private String m_id;
    private String m_pw;
    private String m_name;
    private String m_email;
    private String m_addr;
    private String m_hp;
    private String m_birthday;
    private String m_photo;
    private Timestamp m_joinDay;
    private boolean m_match;
}
