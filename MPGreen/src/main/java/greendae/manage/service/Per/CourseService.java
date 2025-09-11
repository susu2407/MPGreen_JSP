package greendae.manage.service.Per;
import java.util.List;

import greendae.manage.dao.Per.CourseDAO;
import greendae.manage.dto.Per.CourseDTO;

public enum CourseService {
	
	INSTANCE;
	
	private CourseDAO dao = CourseDAO.getInstance();
	
	public List<CourseDTO> findAll() {
		return dao.selectAllCourse();
	}

}
