package kr.or.nextit.spring_project.board;

//import kr.or.nextit.spring_project.board.CommentVO;
import kr.or.nextit.spring_project.blog.FileVO;
import lombok.Data;

import java.time.LocalDateTime;
@Data
public class BoardVO {
    private int no;
    private String title;
    private String content;
    private String writer;
    private String name;
    private LocalDateTime registerDate;
//    private List<FileVO> fileList;
//    private List<CommentVO> commentList;
//
}
