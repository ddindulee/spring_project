package kr.or;

import kr.or.nextit.spring_project.board.BoardMapper;
import kr.or.nextit.spring_project.board.BoardVO;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
public class BoardMapperTest {

    private BoardMapper boardMapper;

    @Test
    public void getListTest() {
        List<BoardVO> boardVoList = boardMapper.getList();

       // size를 체크해보면 됨
    }
}
