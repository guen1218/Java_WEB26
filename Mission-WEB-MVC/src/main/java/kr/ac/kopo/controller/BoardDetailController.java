package kr.ac.kopo.controller;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.service.BoardServiceImpl;
import kr.ac.kopo.board.vo.BoardVO;

public class BoardDetailController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String strNo = request.getParameter("no");
		int boardNo = Integer.parseInt(strNo);
		
		BoardService boardService = new BoardServiceImpl();
		BoardVO board = boardService.getBoardByNo(boardNo);
		
		request.setAttribute("board", board);
		
		return "/board/detail.jsp";
	}

}
