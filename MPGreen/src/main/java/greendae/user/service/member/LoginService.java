package greendae.user.service.member;

import greendae.user.dao.member.LoginDAO;
import greendae.user.dto.member.LoginDTO;

// DAO를 호출하는 역할
public enum LoginService {
    
    INSTANCE; // 여기서 LoginService 객체가 생성됨

	private LoginDAO loginDao = LoginDAO.getInstance(); // 이때 LoginDAO를 호출

    public LoginDTO loginUser(LoginDTO dto) {
        return loginDao.login(dto);
    }
}