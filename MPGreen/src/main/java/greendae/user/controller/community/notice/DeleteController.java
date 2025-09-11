package greendae.user.controller.community.notice;

import java.io.IOException;
import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/notice_delete.do")
public class DeleteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_delete.do", "");

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

        // 세션에서 로그인 사용자 ID 확인
        String writerId = (String) req.getSession().getAttribute("loginUserId");
        if (writerId == null || writerId.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_UNAUTHORIZED, "로그인이 필요합니다.");
            return;
        }

        int result = service.remove(boardId, writerId);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/community/" + category + ".do");
        } else {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "삭제 권한이 없거나 이미 삭제된 글입니다.");
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_delete.do", "");

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

        // 삭제 확인용 조회 (조회수 증가 X)
        CboardDTO board = service.findByIdWithoutHit(boardId);
        if (board == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            return;
        }

        req.setAttribute("board", board);
        req.setAttribute("category", category);

        req.getRequestDispatcher("/WEB-INF/views/community/notice_delete.jsp")
           .forward(req, resp);
    }
}
