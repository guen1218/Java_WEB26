package kr.ac.kopo.controller;

import java.util.List;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.service.BoardServiceImpl;
import kr.ac.kopo.board.vo.BoardVO;

public class BoardListController implements Controller {

	/**
	 * @return  응답할 jsp 파일명
	 */
	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) 
			throws Exception {
		
		BoardService boardService = new BoardServiceImpl();
		List<BoardVO> boardList = boardService.getBoardList();
		
		// 공유영역 등록
		request.setAttribute("boardList", boardList);
		
		return "/board/list.jsp";
	}
}
