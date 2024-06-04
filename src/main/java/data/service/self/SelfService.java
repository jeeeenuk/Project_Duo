package data.service.self;

import data.dto.SelfDto;
import data.mapper.SelfMapperInter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SelfService {
    @Autowired
    private SelfMapperInter selfMapperInter;

    public List<SelfDto> getM_userMembers()
    {
        return selfMapperInter.getM_userData();
    }
    public List<SelfDto> getFm_userMembers()
    {
        return selfMapperInter.getFm_userData();
    }

}
