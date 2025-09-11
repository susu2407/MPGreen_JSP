package greendae.user.service.member;

import greendae.user.dao.member.TermsDAO;
import greendae.user.dto.member.TermsDTO;
import java.util.List;

public enum TermsService {

    INSTANCE;

    private TermsDAO termsDao = TermsDAO.getInstance();

    public List<TermsDTO> findAllTerms() {
        return termsDao.selectAllTerms();
    }
}
