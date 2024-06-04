package data.service.matching;

import data.dto.UserDto;
import data.mapper.MatchingMapperInter;
import lombok.NonNull;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
@RequiredArgsConstructor
public class MatchingService {
    @NonNull
    private MatchingMapperInter matchingMapperInter;
    public int getTotalMatched() {
        return matchingMapperInter.getTotalMatched();
    }
    public Map<String, UserDto> matchingData(String id){
        Map<String, UserDto> map = new HashMap<>();
        map.put("myDto", matchingMapperInter.selectMatchedByMyID(id));
        map.put("otherDto", matchingMapperInter.selectMatchedByOtherID(id));
        return map;
    }

}
