package greendae.user.dao.member;

import greendae.user.dto.member.TermsDTO;
import greendae.util.DBHelper;
import greendae.util.Sql_t;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.naming.NamingException;

public class TermsDAO extends DBHelper {

    private final static TermsDAO INSTANCE = new TermsDAO();

    public static TermsDAO getInstance() {
        return INSTANCE;
    }

    private TermsDAO() {}

    public List<TermsDTO> selectAllTerms() {
        List<TermsDTO> termsList = new ArrayList<>();
        
        try {
            conn = getConnection();
            // 모든 약관을 가져오는 쿼리문
            psmt = conn.prepareStatement(Sql_t.SELECT_ALL_TERMS);
            rs = psmt.executeQuery();
            
            while(rs.next()) {
                TermsDTO dto = new TermsDTO();
                dto.setNo(rs.getInt("no"));
                dto.setTitle(rs.getString("title")); // DTO의 title에 맞게 수정
                dto.setContent(rs.getString("content")); // DTO의 content에 맞게 수정
                termsList.add(dto);
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
        return termsList;
    }
}
