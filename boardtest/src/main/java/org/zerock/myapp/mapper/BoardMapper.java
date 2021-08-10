package org.zerock.myapp.mapper;

import java.util.List;

import org.zerock.myapp.domain.BoardVO;

public interface BoardMapper {

	 public abstract List<BoardVO> selectList();
	 
	 public abstract BoardVO boardView(int bnos);
}

