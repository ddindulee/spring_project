package kr.or.nextit.spring_project.blog;

import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.time.LocalDateTime;

    @Data /* lombok 라이브러리 추가하고, @Data 어노테이션 추가하면 getter setter constructor 등등 자동으로 만들어줌. 코드 간결화 */
public class FileVO {

        private int id;
        private int boardNo;
        private String fileName;
        private String originalName;
        private long fileSize;
        @DateTimeFormat(iso = DateTimeFormat.ISO.DATE_TIME) /* 해당 직역 날짜 형식으로 자동 포맷 해줌 */
        private LocalDateTime registerDate;
}
