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

@WebServlet("/community/notice_write.do")
public class WriteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        // URL에서 카테고리 추출 (ex: /community/notice_write.do → notice)
        String path = req.getServletPath();
        String category = path.replace("/community/", "").replace("_write.do", "");

        req.setAttribute("category", category);

        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/community/notice_write.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String category = req.getParameter("category");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String newsType = req.getParameter("newsType");

     // ★ 로그인 세션이 없으니 임시 고정값 세팅
        String writerType = "info";      // ENUM(info, student, professor)
        String writerId = "admin";       // PK에 맞는 값
        String writerName = "관리자";     // 보여줄 이름

        CboardDTO dto = new CboardDTO();
        dto.setCategory(category);
        dto.setTitle(title);
        dto.setContent(content);
        dto.setWriterType(writerType);
        dto.setWriterId(writerId);

        // ✅ DB에는 writer_name이 없으므로 insert에서는 사용하지 않음
        // 하지만 DTO에는 세팅해두면 JSP에서 ${board.writerName} 호출 시 값이 뜸
        dto.setWriterName(writerName);

        dto.setNewsType(newsType);
        service.register(dto);

        // ✅ notice 전용 목록 페이지로 리다이렉트
        resp.sendRedirect(req.getContextPath() + "/community/notice.do");
    }

}
