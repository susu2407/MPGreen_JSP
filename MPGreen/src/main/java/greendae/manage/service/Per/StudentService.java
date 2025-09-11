package greendae.manage.service.Per;
import java.util.List;

import greendae.manage.dao.Per.StudentDAO;
import greendae.manage.dto.Per.StudentDTO;

public enum StudentService {
	
	INSTANCE;
	
	private StudentDAO dao = StudentDAO.getInstance();
	
	public List<StudentDTO> findAll() {
		return dao.selectAllStudent();
	}

}
