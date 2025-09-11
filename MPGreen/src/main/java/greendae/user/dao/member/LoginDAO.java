package greendae.user.dao.member;

import greendae.user.dto.member.LoginDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_t;
import java.sql.SQLException;
import javax.naming.NamingException;

public class LoginDAO extends DBHelper {
	  private static LoginDAO instance = new LoginDAO();

	    private LoginDAO() {
	        // 생성자 private으로 막음
	    }

	    public static LoginDAO getInstance() {
			return instance;
		}
    public LoginDTO login(LoginDTO loginInfo) {
        LoginDTO resultDTO = null;

        try {
            conn = getConnection();
            
            String sql;
            // 역할에 따라 다른 테이블의 SQL 쿼리 선택
            if ("student".equals(loginInfo.getRole())) {
                sql = Sql_t.LOGIN_STUDENT;
            } else if ("professor".equals(loginInfo.getRole())) {
                sql = Sql_t.LOGIN_PROFESSOR;
            } else {
                sql = Sql_t.LOGIN_USER;
            }
            
            psmt = conn.prepareStatement(sql);
            psmt.setString(1, loginInfo.getId());
            psmt.setString(2, loginInfo.getPassword());

            rs = psmt.executeQuery();
            
            if (rs.next()) {
                System.out.println("로그인 성공! DB에서 데이터 찾음.");
                resultDTO = new LoginDTO();
                resultDTO.setRole(loginInfo.getRole());
                
                // 역할에 따라 컬럼명을 다르게 가져오도록 수정
                if ("student".equals(loginInfo.getRole())) {
                    resultDTO.setId(rs.getString("s_id"));
                    resultDTO.setPassword(rs.getString("id_num"));
                } else if ("professor".equals(loginInfo.getRole())) {
                    resultDTO.setId(rs.getString("p_id"));
                    resultDTO.setPassword(rs.getString("id_num"));
                } else { // 일반인
                    resultDTO.setId(rs.getString("u_id"));
                    resultDTO.setPassword(rs.getString("pass"));
                }

            } else {
                System.out.println("로그인 실패! DB에서 데이터 못 찾음.");
            }

        } catch (SQLException | NamingException e) {
            e.printStackTrace();
        } finally {
            try {
                closeAll();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return resultDTO;
    }


}