package data.service.self;

import data.dto.ComplaintDto;
import data.dto.SelfDto;
import data.mapper.ComplaintMapperInter;
import data.mapper.SelfMapperInter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SelfService {
    @Autowired
    private SelfMapperInter selfMapperInter;

    public void insertSelf(SelfDto dto)
    {
        selfMapperInter.insertSelf(dto);
    }

    public List<SelfDto> getAllSelf()
    {
        return selfMapperInter.getAllSelf();
    }

}
