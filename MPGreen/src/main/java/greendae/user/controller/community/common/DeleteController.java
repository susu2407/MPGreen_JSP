package greendae.user.controller.community.common;

import java.io.IOException;

import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/delete.do")
public class DeleteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
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

        // 조회수 증가 없이 글 조회
        CboardDTO dto = service.findByIdWithoutHit(boardId);
        if (dto == null) {
            resp.sendError(HttpServletResponse.SC_NOT_FOUND, "Board not found");
            return;
        }

        req.setAttribute("board", dto);

        String view = "/WEB-INF/views/community/" + category + "_delete.jsp";
        req.getRequestDispatcher(view).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
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

        // 로그인된 사용자 ID 가져오기 (세션 기준)
        String writerId = (String) req.getSession().getAttribute("loginUserId");
        if (writerId == null || writerId.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_UNAUTHORIZED, "로그인이 필요합니다.");
            return;
        }

        int result = service.remove(boardId, writerId);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/community/list.do?category=" + category);
        } else {
            resp.sendError(HttpServletResponse.SC_FORBIDDEN, "삭제 권한이 없거나 이미 삭제된 글입니다.");
        }
    }
}
