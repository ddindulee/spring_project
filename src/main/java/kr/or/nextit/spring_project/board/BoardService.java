package kr.or.nextit.spring_project.board;

import lombok.Data;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Data
@RequiredArgsConstructor
@Service
public class BoardService {
    private final BoardMapper mapper;

//    public int insertBoard(BoardVO board) {
////        int insertedValue = mapper.insertMemo(boardVO);
//        return mapper.insertBoard(board);
//    }
    public void register(BoardVO board){
        mapper.insertSelectKey(board);
    }

    public List<BoardVO> getList(){
        return mapper.getList();
    }

    public BoardVO get(int no){
        return  mapper.read(no);
    }

    public boolean modify(BoardVO board){
        return mapper.update(board) == 1;
    }

    public boolean remove(int no){
        return mapper.delete(no) == 1;
    }
}
