package data.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.apache.ibatis.type.Alias;

import java.sql.Timestamp;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Alias("MatchingDto")
public class MatchingDto {
    private int idx;
    private String m_id;
    private String fm_id;
    private Timestamp matching_date;
}
