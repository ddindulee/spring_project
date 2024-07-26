package kr.or.nextit.spring_project.board;


import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BoardMapper {

    public List<BoardVO> getList();

    public void insert(BoardVO board);

    public void insertSelectKey(BoardVO board);

    public BoardVO read(int no);
//    int insertBoard(BoardVO board);

    public int delete(int no);

    public int update(BoardVO board);
}
