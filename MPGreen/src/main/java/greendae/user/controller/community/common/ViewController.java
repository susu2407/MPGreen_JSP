package greendae.user.controller.community.common;

import java.io.IOException;
import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/view.do")
public class ViewController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
        int boardId = Integer.parseInt(req.getParameter("boardId"));

        // 조회수 증가 포함
        CboardDTO dto = service.findByIdWithHit(boardId);
        req.setAttribute("board", dto);

        String view = "/WEB-INF/views/community/" + category + "_view.jsp";
        req.getRequestDispatcher(view).forward(req, resp);
    }
}
