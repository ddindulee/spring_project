package kr.or.nextit.blog.blog;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@RequiredArgsConstructor
@Service
public class BlogService {

    private final BlogMapper mapper;

    public List<BlogVO> selectBlogs(){
        return mapper.selectBlogs();
    }

    public BlogVO selectBlog(int no){
        return mapper.selectBlog(no);
    }


}
