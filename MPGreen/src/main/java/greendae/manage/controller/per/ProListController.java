package greendae.manage.controller.per;

import java.io.IOException;
import java.util.List;

import greendae.manage.dto.Per.ProfessorDTO;
import greendae.manage.service.Per.ProfessorService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/manage/Personnel/ProList.do")
public class ProListController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	private ProfessorService service = ProfessorService.INSTANCE; 
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		List<ProfessorDTO> dtoList = service.findAll();
		req.setAttribute("dtoList", dtoList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/manage/Personnel/ProList.jsp");
		dispatcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
	

}
