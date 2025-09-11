package greendae.user.controller.student.curriculum;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.student.CurriculumDTO;
import greendae.user.service.student.CurriculumService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/student/curriculum.do")
public class ListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private CurriculumService service = CurriculumService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<CurriculumDTO> dtoList = service.findAll();
		
		req.setAttribute("dtoList", dtoList);
		
		System.out.println(dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/student/curriculum.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}

}