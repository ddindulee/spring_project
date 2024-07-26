package kr.or.nextit.spring_project.board;

import jakarta.servlet.http.HttpSession;
import kr.or.nextit.spring_project.board.BoardService;
import kr.or.nextit.spring_project.board.BoardVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
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
    private final BoardService service;

    @GetMapping("/list")
    public void list(Model model) {
        model.addAttribute("list", service.getList());
    }
    @PostMapping("/register")
    public String register(BoardVO boardVO, RedirectAttributes redirectAttributes){
        service.register(boardVO);
        redirectAttributes.addFlashAttribute("result", boardVO.getNo());
        return "redirect:/board/list";
    }



}
