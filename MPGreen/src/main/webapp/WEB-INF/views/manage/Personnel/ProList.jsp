<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 교수목록</title>

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
                <h4>교수 목록</h4>
                <div class="breadcrumb">
                    <span>인사관리</span>
                    <span class="end">교수목록</span>
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
                        <th>교수번호</th>
                        <th>이름</th>
                        <th>주민번호</th>
                        <th>휴대폰</th>
                        <th>이메일</th>
                        <th>학과</th>
                        <th>직위</th>
                        <th>재직여부</th>
                        <th>임용일</th>
                    </tr>
                    
                    <c:forEach var="dto" items="${dtoList}">
                    <tr>
                        <td>${dto.p_id}</td>
                        <td>${dto.name}</td>
                        <td>${dto.id_num}</td>
                        <td>${dto.phone}</td>
                        <td>${dto.email}</td>
                        <td>${dto.department}</td>
                        <td>${dto.degree}</td>
                        <%-- 재직여부 상태에 따라 동적으로 class를 부여 --%>
				        <c:choose>
				            <c:when test="${dto.p_status == '재직중' or dto.p_status == '재학'}">
				                <td class="status-active">${dto.p_status}</td>
				            </c:when>
				            <c:when test="${dto.p_status == '휴직'}">
				                <td class="status-leave">${dto.p_status}</td>
				            </c:when>
				            <c:when test="${dto.p_status == '퇴직'}">
				                <td class="status-inactive">${dto.p_status}</td>
				            </c:when>
				            <c:otherwise>
				                <td>${dto.p_status}</td>
				            </c:otherwise>
				        </c:choose>
                        <td>${dto.hire_date}</td>
                    </tr>
                    </c:forEach>
                    
                </table>
                
               
                
                <div class="regi">
                        <a href="${pageContext.request.contextPath}/manage/Personnel/ProRegist.do">등록</a>
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