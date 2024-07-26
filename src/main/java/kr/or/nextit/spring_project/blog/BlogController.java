//package kr.or.nextit.spring_project.blog;
//
//import jakarta.servlet.http.HttpSession;
//import lombok.RequiredArgsConstructor;
//import lombok.extern.slf4j.Slf4j;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//
//import java.util.List;
//
//@Slf4j
//@RequiredArgsConstructor
//@Controller
//public class BlogController {
//
//    private final BlogService service;
//
//    @GetMapping("/blog/list")
//    public String selectBlogs(Model model) {
//        List<BlogVO> blogs = service.selectBlogs();
//        System.out.println("들어오니 >>>>>> "+blogs);
//        model.addAttribute("blogs", blogs);
//        return "blog/list";
//    }
//
//    @GetMapping("/board/insert")
//    public String insertMemo() {
//        return "memo/insert";
//    }
//    @PostMapping("/board/insert")
//    public String insertMemo(@ModelAttribute  BoardVOa, HttpSession session) {
//        service.insertMemo(memo);
//        return "redirect:/blog/insert";
//    }
//
//    @GetMapping("/blog/view")
//    public String selectBlog(Model model, @RequestParam int no) {
//        BlogVO blog = service.selectBlog(no);
//        model.addAttribute("blog", blog);
//
//        System.out.println("blog >>>"+ blog);
//        return "blog/view";
//    }
//
//
//}
