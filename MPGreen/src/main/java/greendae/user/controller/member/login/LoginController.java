package greendae.user.controller.member.login;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import greendae.user.dto.member.LoginDTO;
import greendae.user.service.member.LoginService;
import greendae.util.ResultCode;

@WebServlet("/member/login.do")
public class LoginController extends HttpServlet {

    private static final long serialVersionUID = 1L;
    
    private LoginService loginService = LoginService.INSTANCE;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");

        String userId = req.getParameter("id");
        String userPassword = req.getParameter("pw");
        String role = req.getParameter("role");
        
        System.out.println("로그인 시도: " + userId + " / " + userPassword + " / " + role);

        LoginDTO dto = new LoginDTO();
        dto.setId(userId);
        dto.setPassword(userPassword);
        dto.setRole(role);
        
        LoginDTO userDTO = loginService.loginUser(dto);

        if (userDTO != null) {
        	// 로그인 성공 시
            HttpSession session = req.getSession();
            session.setAttribute("sessUser", userDTO);
            // 메인 페이지로 이동할 절대 경로
            resp.sendRedirect(req.getContextPath() + "/index.jsp");
        } else {
            req.setAttribute("message", ResultCode.LOGIN_FAIL.getMessage());
            RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/member/login.jsp");
            dispatcher.forward(req, resp);
        }
    }
}