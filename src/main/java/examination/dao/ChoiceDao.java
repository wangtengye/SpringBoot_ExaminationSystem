package examination.dao;

import examination.entity.ChoiceQuestion;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface ChoiceDao {
    int getCount();

    List<ChoiceQuestion> getChoiceQuestion(@Param("offset") int offset, @Param("limit") int limit);

    int delete(long id);

    int deleteByList(List<Long> ids);

    int update(ChoiceQuestion choiceQuestion);

    int addByList(List<ChoiceQuestion> teachers);

    List<ChoiceQuestion> queryAll();
}