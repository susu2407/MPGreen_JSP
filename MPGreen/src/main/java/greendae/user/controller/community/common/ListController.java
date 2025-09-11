package greendae.user.controller.community.common;

import java.io.IOException;
import java.util.List;

import greendae.user.dto.community.CboardDTO;
import greendae.user.dto.community.PagenationDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/list.do")
public class ListController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String category = req.getParameter("category"); // news, jobs, free, qna, data
        String pg = req.getParameter("pg");
        String field = req.getParameter("field");
        String keyword = req.getParameter("q");

        // 페이지네이션
        PagenationDTO pagenationDTO = service.getPagenationDTO(pg, category, field, keyword);

        List<CboardDTO> dtoList;
        if (keyword == null || keyword.isEmpty()) {
            dtoList = service.findAllByCategory(category, pagenationDTO.getStart());
        } else {
            dtoList = service.findAllSearch(category, pagenationDTO.getStart(), field, keyword);
        }

        req.setAttribute("dtoList", dtoList);
        req.setAttribute("pagenationDTO", pagenationDTO);

        // 카테고리별 JSP 분기
        String view = switch (category) {
            case "news" -> "/WEB-INF/views/community/news.jsp";
            case "jobs" -> "/WEB-INF/views/community/jobs.jsp";
            case "free" -> "/WEB-INF/views/community/free.jsp";
            case "qna" -> "/WEB-INF/views/community/qna.jsp";
            case "data" -> "/WEB-INF/views/community/data.jsp";
            default -> "/WEB-INF/views/community/error.jsp";
        };

        RequestDispatcher dispatcher = req.getRequestDispatcher(view);
        dispatcher.forward(req, resp);
    }
}
