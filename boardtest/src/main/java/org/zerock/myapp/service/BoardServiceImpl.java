package org.zerock.myapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.zerock.myapp.domain.BoardVO;
import org.zerock.myapp.mapper.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{

	@Autowired BoardMapper boardMap;
	
	@Override
	public List<BoardVO> list() {
		List<BoardVO> list = boardMap.selectList();
		return list;
	}

	@Override
	public BoardVO boardView(int bno) {
		BoardVO boardVO = boardMap.boardView(bno);
		return boardVO;
	}


}
