package greendae.user.controller.academics.education;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.academics.AcademicsDTO;
import greendae.user.service.academics.AcademicsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/academics/education.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private AcademicsService service = AcademicsService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		List<AcademicsDTO> dtoList = service.findAll();
		
		req.setAttribute("dtoList", dtoList);
		
		System.out.println(dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/academics/education.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}


}
