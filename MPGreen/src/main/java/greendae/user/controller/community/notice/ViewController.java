package greendae.user.controller.community.notice;

import java.io.IOException;
import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/notice_view.do")
public class ViewController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_view.do", "");

        String boardIdParam = req.getParameter("boardId");
        if (boardIdParam == null) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "boardId is required");
            return;
        }

        int boardId;
        try {
            boardId = Integer.parseInt(boardIdParam);
        } catch (NumberFormatException e) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid boardId");
            return;
        }

        // 조회수 증가 포함
        CboardDTO dto = service.findByIdWithHit(boardId);
        if (dto == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            return;
        }

        req.setAttribute("board", dto);
        req.setAttribute("category", category);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/notice_view.jsp");
        dispatcher.forward(req, resp);
    }
}
