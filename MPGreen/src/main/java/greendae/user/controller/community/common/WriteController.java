package greendae.user.controller.community.common;

import java.io.IOException;

import greendae.user.dto.community.CboardDTO;
import greendae.user.service.community.CboardService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/community/write.do")
public class WriteController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private final CboardService service = CboardService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String category = req.getParameter("category");

        // ★ category 보정 (null 방지)
        if (category == null || category.isEmpty()) {
            String uri = req.getRequestURI();
            if (uri.contains("notice")) category = "notice";
            else if (uri.contains("news")) category = "news";
            else if (uri.contains("jobs")) category = "jobs";
            else if (uri.contains("free")) category = "free";
            else if (uri.contains("qna")) category = "qna";
            else if (uri.contains("data")) category = "data";
            else category = "notice"; // fallback 기본값
        }

        String view = "/WEB-INF/views/community/" + category + "_write.jsp";
        req.setAttribute("category", category);
        req.getRequestDispatcher(view).forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String category = req.getParameter("category");
        String title = req.getParameter("title");
        String content = req.getParameter("content");
        String newsType = req.getParameter("newsType");

        // ★ category 보정
        if (category == null || category.isEmpty()) {
            String uri = req.getRequestURI();
            if (uri.contains("notice")) category = "notice";
            else if (uri.contains("news")) category = "news";
            else if (uri.contains("jobs")) category = "jobs";
            else if (uri.contains("free")) category = "free";
            else if (uri.contains("qna")) category = "qna";
            else if (uri.contains("data")) category = "data";
            else category = "notice"; // fallback
        }

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
        dto.setWriterName(writerName);
        dto.setNewsType(newsType);

        service.register(dto);

        resp.sendRedirect(req.getContextPath() + "/community/list.do?category=" + category);
    }
}
