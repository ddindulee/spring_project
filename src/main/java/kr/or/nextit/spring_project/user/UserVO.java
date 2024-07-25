package kr.or.nextit.blog.user;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class UserVO {

    private int no;

    private String email;

    private String password;

    private String name;

    private LocalDateTime registerDate;

}
