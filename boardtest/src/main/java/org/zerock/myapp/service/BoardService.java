package org.zerock.myapp.service;

import java.util.List;

import org.zerock.myapp.domain.BoardVO;

public interface BoardService {

	List<BoardVO> list();
	
	BoardVO boardView(int bno);
	
	void boardInsert(BoardVO boardVO);
}
