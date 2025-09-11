package greendae.util;

public class Sql_p {

	public final static String SELECT_ALL_ACADEMICS = "SELECT department_name, dean, contact_phone FROM department where college = '인문사회대학'";
	
	public final static String SELECT_ALL_CURRICULUM_MAJOR = "select grade, course_code, "
		 											+"'공통' as completion_group, "
		 											+"credit from course "
		 											+"where completion_type like '전공%' "
		 											+"order by grade asc,  "
		 											+ "case completion_type  when '전공필수' then 1 "
		 											+ "when '전공선택' then 2 else 9 end,	course_code asc";
	
	public final static String SELECT_ALL_CURRICULUM_OTHER = "SELECT grade, course_code, '공통' as completion_group, "
															+"course_name, credit from course "
															+"where completion_type like '교양%' "
															+"order by grade asc, case completion type "
															+"when '교양필수' then 1 when '교양선택' then 2"
															+"else 9 end, course_code asc";
}
