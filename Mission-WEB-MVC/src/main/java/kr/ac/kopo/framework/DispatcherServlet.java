package kr.ac.kopo.framework;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import kr.ac.kopo.controller.BoardListController;
import kr.ac.kopo.controller.BoardWriteFormController;
import kr.ac.kopo.controller.Controller;

@WebServlet("*.do")
public class DispatcherServlet extends HttpServlet {

	private HandlerMapping mappings;
	
	@Override
	public void init(ServletConfig config) throws ServletException {
		mappings = new HandlerMapping();
	}

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String context = request.getContextPath();
//		System.out.println("context : " + context);
		
		String uri = request.getRequestURI();
		uri = uri.substring(context.length());
		
		System.out.println("요청 URI : " + uri);
		
		try {
			
			Controller control = mappings.getController(uri);
			
			String callPage = control.handleRequest(request, response);
			
			RequestDispatcher dispacher = request.getRequestDispatcher(callPage);
			dispacher.forward(request, response);
			
		} catch(Exception e) {
			e.printStackTrace();
			throw new ServletException(e);
		}
		
	}

}














