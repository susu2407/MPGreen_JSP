package greendae.manage.controller.edu;

import java.io.IOException;
import java.util.List;

import greendae.manage.dto.Per.CourseDTO;
import greendae.manage.service.Per.CourseService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/manage/Education/CouList.do")
public class CouListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private CourseService service = CourseService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<CourseDTO> dtoList = service.findAll();
		req.setAttribute("dtoList", dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/manage/Education/CouList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	

}
