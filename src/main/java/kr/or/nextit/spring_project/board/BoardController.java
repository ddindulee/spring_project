package kr.or.nextit.spring_project.board;

import jakarta.servlet.http.HttpSession;
import kr.or.nextit.spring_project.board.BoardService;
import kr.or.nextit.spring_project.board.BoardVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/board/*")
public class BoardController {

    @Autowired
    private  BoardService service;

    @GetMapping("/list")
    public void list(Model model) {
        model.addAttribute("list", service.getList());
    }
    @PostMapping("/register")
    public String register(BoardVO boardVO, RedirectAttributes redirectAttributes){
        service.register(boardVO);
        redirectAttributes.addFlashAttribute("result", service.get());
        return "redirect:/board/list";
    }

//    조회
    @GetMapping("/get")
    public void get(Model model, @RequestParam("no") int no){
        model.addAttribute("board", service.get(no));
    }

//수정
    @PostMapping("/modify")
    public String modify(BoardVO board, RedirectAttributes redirectAttributes){
        if(service.modify(board)){
            redirectAttributes.addFlashAttribute("result", "success");
        }
        return "redirect:/board/list";
    }

//   삭제
    @PostMapping("/remove")
    public String remove(@RequestParam("no") int no, RedirectAttributes redirectAttributes){
        if(service.remove(no)){
            redirectAttributes.addFlashAttribute("result", "success");
        }
        return "redirect:/board/list";
    }

}
