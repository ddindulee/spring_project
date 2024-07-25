package kr.or.nextit.spring_project.blog;

import lombok.RequiredArgsConstructor;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface BlogMapper {

    List<BlogVO> selectBlogs();

    BlogVO selectBlog(int no);
}
