package greendae.user.controller.member.terms;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.member.TermsDTO;
import greendae.user.service.member.TermsService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/member/terms.do")
public class TermsController extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	private TermsService service = TermsService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 모든 약관 데이터를 가져와서 리스트에 담음
        List<TermsDTO> termsList = service.findAllTerms();
        
     // request에 약관 리스트를 담아 JSP로 전달
        req.setAttribute("termsList", termsList);
		
        System.out.println(termsList);
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/terms.jsp");
		dispatcher.forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
