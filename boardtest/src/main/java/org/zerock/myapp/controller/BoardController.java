package org.zerock.myapp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.myapp.domain.BoardVO;
import org.zerock.myapp.service.BoardService;

@RequestMapping(value="/board")
@Controller
public class BoardController {

	@Autowired BoardService boardService;
	
	//@RequestMapping("/list.do")
	//public List<BoardVO> list(Model model) {
	//	List<BoardVO> list = bs.list();
	//	return list;
	//}
	
	
	@RequestMapping("/list.do")
	public String list(Model model) {
		String url = "/board/list";
		List<BoardVO> list = boardService.list();
		model.addAttribute("list", list);
		return url;
	}
	
	@RequestMapping("/boardView.do")
	public BoardVO boardView(Model model, int bno) {
		BoardVO boardVO = boardService.boardView(bno);
		return boardVO;
	}
	
	@RequestMapping("/boardForm.do")
	public String boardForm() {
		return "/board/boardForm";
	}
	
	@RequestMapping("/boardInsert.do")
	public String boardInsert(BoardVO boardVO, Model model) {
		boardService.boardInsert(boardVO);
		List<BoardVO> list = boardService.list();
		model.addAttribute("list", list);
		String url = "/board/list";
		return url;
	}
	
}
