<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 학생목록</title>
    
<%@ include file="/WEB-INF/views/manage/_header.jsp" %>




<body>
    <main>
        <!-- ■■■ 사이드바 시작 ■■■ -->
        <%@ include file="/WEB-INF/views/manage/_sidebar.jsp" %>
        <!-- □□□ 사이드바 끝 □□□ -->

        <!-- ■■■ 메인컨텐츠 시작■■■-->
        <div class="managemain">
            <!-- 컨텐츠_최상단 -->
            <article class="top">
                <h4>학생 목록</h4>
                <div class="breadcrumb">
                    <span>인사관리</span>
                    <span class="end">학생목록</span>
                </div>
            </article>

            <div class="perList">
                <!-- 검색창 -->
                <div class="search">
                    <div class="input-container">
                        <input type="text" class="search-condition" placeholder="검색조건">
                    </div>
                    <div class="input-container">
                        <input type="text" class="search-input" placeholder="키워드 입력">
                    </div>
                    <div class="searchbtn">
                        <a href="#">검색</a>
                    </div>
                </div>

                <!-- 테이블 -->
                <table>
                    <tr>
                        <th>학번</th>
                        <th>이름</th>
                        <th>주민번호</th>
                        <th>휴대폰</th>
                        <th>이메일</th>
                        <th>학과</th>
                        <th>학년</th>
                        <th>학기</th>
                        <th>상태</th>
                    </tr>
                	
                	<c:forEach var="dto" items="${dtoList}">
                    <tr>
                        <td>${dto.s_id}</td>
                        <td>${dto.name}</td>
                        <td>${dto.id_num}</td>
                        <td>${dto.phone}</td>
                        <td>${dto.email}</td>
                        <td>${dto.department}</td>
                        <td>${dto.admission_grade}</td>
                        <td>${dto.admission_semester}</td>
                        <%-- 재학여부 상태에 따라 동적으로 class를 부여 --%>
				        <c:choose>
				            <c:when test="${dto.s_status == '재학중' or dto.s_status == '재학'}">
				                <td class="status-active">${dto.s_status}</td>
				            </c:when>
				            <c:when test="${dto.s_status == '휴학중'}">
				                <td class="status-leave">${dto.s_status}</td>
				            </c:when>
				            <c:when test="${dto.s_status == '졸업'or dto.s_status == '자퇴'}">
				                <td class="status-inactive">${dto.s_status}</td>
				            </c:when>
				            <c:otherwise>
				                <td>${dto.s_status}</td>
				            </c:otherwise>
				        </c:choose>
                    </tr>
                    </c:forEach>
                    
                </table>
                
                <!-- 백업 테이블 
                <table>
                    <tr>
                        <th>학번</th>
                        <th>이름</th>
                        <th>주민번호</th>
                        <th>휴대폰</th>
                        <th>이메일</th>
                        <th>학과</th>
                        <th>학년</th>
                        <th>학기</th>
                        <th>상태</th>
                    </tr>
                
                    <tr>
                        <td>202001230</td>
                        <td>홍길동</td>
                        <td>900103-1234567</td>
                        <td>010-1234-1001</td>
                        <td>hong1001@naver.com</td>
                        <td>컴퓨터공학과</td>
                        <td>3</td>
                        <td>1</td>
                        <td class="ing">재학중</td>
                    </tr>
                    
                    <tr>
                        <td>202001230</td>
                        <td>홍길동</td>
                        <td>900103-1234567</td>
                        <td>010-1234-1001</td>
                        <td>hong1001@naver.com</td>
                        <td>컴퓨터공학과</td>
                        <td>3</td>
                        <td>1</td>
                        <td class="run">자퇴</td>
                    </tr>
                </table>
                -->
                
                <div class="regi">
                        <a href="${pageContext.request.contextPath}/manage/Personnel/stdRegist.do">등록</a>
                </div>
                    
                <!-- 하단 페이지네이션(Pagination)-->
                <article class="pagebtn">
                    <a href="#"><img src="/MPGreen/images/btn-first-page.png" alt="Go to First"></a>
                    <a href="#" class="pagebtn_R"><img src="/MPGreen/images/btn-prev-page.png" alt="Previous"></a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#" class="pagebtn_L"><img src="/MPGreen/images/btn-next-page.png" alt="Next"></a>
                    <a href="#"><img src="/MPGreen/images/btn-last-page.png" alt="Go to Last"></a>
                </article>
            </div> 
        </div>
        <!-- □□□ 메인컨텐츠 끝  □□□-->
        
    </main>


    <!-- 푸터 -->
    <%@ include file="/WEB-INF/views/manage/_footer.jsp" %>