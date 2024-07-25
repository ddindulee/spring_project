package kr.or.nextit.blog.blog;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Controller
public class BlogController {

    private final BlogService service;

    @GetMapping("/blog/list")
    public String selectBlogs(Model model) {
        List<BlogVO> blogs = service.selectBlogs();
        System.out.println("들어오니 >>>>>> "+blogs);
        model.addAttribute("blogs", blogs);
        return "blog/list";
    }

    @GetMapping("/blog/view")
    public String selectBlog(Model model, @RequestParam int no) {
        BlogVO blog = service.selectBlog(no);
        model.addAttribute("blog", blog);

        System.out.println("blog >>>"+ blog);
        return "blog/view";
    }


}
