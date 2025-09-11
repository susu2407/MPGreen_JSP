package greendae.user.controller.community.common;

import java.io.IOException;
import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/edit.do")
public class EditController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");
        int boardId = Integer.parseInt(req.getParameter("boardId"));

        // 조회수 증가 없이 가져오기
        CboardDTO dto = service.findByIdWithoutHit(boardId);
        req.setAttribute("board", dto);

        String view = "/WEB-INF/views/community/" + category + "_edit.jsp";
        req.getRequestDispatcher(view).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String category = req.getParameter("category");
        String boardIdParam = req.getParameter("boardId");

        if (boardIdParam == null || boardIdParam.isEmpty()) {
            resp.sendError(HttpServletResponse.SC_BAD_REQUEST, "boardId is required");
            return;
        }

        int boardId = Integer.parseInt(boardIdParam);
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        CboardDTO dto = new CboardDTO();
        dto.setBoardId(boardId);
        dto.setTitle(title);
        dto.setContent(content);

        // 로그인 안했으니 테스트용 고정 값
        dto.setWriterId("testUser");  

        int result = service.modify(dto);

        if (result > 0) {
            resp.sendRedirect(req.getContextPath() + "/community/view.do?category=" + category + "&boardId=" + boardId);
        } else {
            resp.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "수정 실패 (조건 불일치)");
        }
    }

}
