<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <!-- ■■■ 사이드바 시작 ■■■ -->
        <aside>
        <div>
            <h4><img src="/MPGreen/images/ico-admin-setting.png" alt="setting">환경설정</h4>
            <a href="#">· 기본환경정보</a><br>
            <a href="#">· 약관관리</a>
        </div>
        <div>
            <h4><img src="/MPGreen/images/ico-admin-academic.png" alt="academic">학사운영</h4>
            <a href="${pageContext.request.contextPath}/manage/Education/eduStatus.do">· 교육 운영 현황</a><br>
            <a href="#">· 학년별 학생 현황</a><br>
            <a href="#">· 학과별 학생 현황</a><br>
            <a href="${pageContext.request.contextPath}/manage/Education/CouList.do">· 강의 목록</a><br>
            <a href="${pageContext.request.contextPath}/manage/Education/CouRegist.do">· 강의 등록</a><br>
            <a href="${pageContext.request.contextPath}/manage/Education/CouEnrollStatus.do">· 수강 현황</a>
        </div>
        <div>
            <h4><img src="/MPGreen/images/ico-admin-persons.png" alt="persons">인사관리</h4>
            <a href="${pageContext.request.contextPath}/manage/Personnel/ProList.do">· 교수 목록 및 등록</a><br>
            <a href="${pageContext.request.contextPath}/manage/Personnel/StdList.do">· 학생 목록 및 등록</a><br>
            <a href="#">· 임직원 목록 및 등록</a>
        </div>
        <div>
            <h4><img src="/MPGreen/images/ico-admin-college.png" alt="college">대학 및 학과</h4>
            <a href="/MPGreen/manage/Department/depList.do">· 대학 및 학과 목록</a><br>
            
            <a href="/MPGreen/manage/Department/depRegist.do">· 대학 및 학과 등록</a>
        </div>
        <div>
            <h4><img src="/MPGreen/images/ico-admin-board.png" alt="board">게시판관리</h4>
            <a href="#">· 입학안내 공지사항</a><br>
            <a href="#">· 학사안내 공지사항</a><br>
            <a href="#">· 커뮤니티 공지사항</a><br>
            <a href="#">· 입학상담</a><br>
            <a href="#">· 질문 및 답변</a><br>
            <a href="#">· 식단안내</a><br>
            <a href="#">· 자료실</a>
        </div>
        </aside> 
        <!-- □□□ 사이드바 끝 □□□ -->