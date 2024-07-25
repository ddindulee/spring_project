package kr.or.nextit.blog.blog;

import lombok.Data;

import java.time.LocalDateTime;
import java.util.List;

@Data
public class BlogVO {

    private int no;
    private String title;
    private String content;
    private String writer;
    private String name;
    private LocalDateTime registerDate;
    private List<FileVO> fileList;
    private List<CommentVO> commentList;


}
