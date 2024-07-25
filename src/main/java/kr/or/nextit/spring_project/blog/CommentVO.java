package kr.or.nextit.spring_project.blog;


import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;

import java.time.LocalDateTime;

@Data
public class CommentVO {

    private int no;
    private int boardNo;
    private String content;
    private String writer;
    @JsonFormat(shape = JsonFormat.Shape.STRING) /* 날짜 포맷 하기 */
    private LocalDateTime registerDate;

}
