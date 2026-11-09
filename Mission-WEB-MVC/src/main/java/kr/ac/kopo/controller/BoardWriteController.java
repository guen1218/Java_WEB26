package kr.ac.kopo.controller;

import java.awt.BorderLayout;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.board.service.BoardService;
import kr.ac.kopo.board.service.BoardServiceImpl;
import kr.ac.kopo.board.vo.BoardVO;

public class BoardWriteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// title writer context
		
		String title = request.getParameter("title");
		String writer = request.getParameter("writer");
		String content = request.getParameter("content");
		
		//BoardVO 저장
		BoardVO newBoard = new BoardVO();
		newBoard.setTitle(title);
		newBoard.setWriter(writer);
		newBoard.setContent(content);
		
		//Service 호출 
		BoardService boardService = new BoardServiceImpl();
		boardService.addBoard(newBoard);
		
		return "/board/write.jsp";
	}

}
