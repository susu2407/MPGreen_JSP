<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>그린대학교 강의목록</title>
    
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
                <h4>강의 목록</h4>
                <div class="breadcrumb">
                    <span>학사관리</span>
                    <span class="end">강의목록</span>
                </div>
            </article>

            <div class="perList">
                <!-- 검색창 -->
                <div class="search">
                    <div class="input-container">
                        <input type="text" class="search-condition" placeholder="검색조건">
                    </div>
                    <div class="input-container">
                        <input type="text" class="search-input">
                    </div>
                    <div class="searchbtn">
                        <a href="#">검색</a>
                    </div>
                </div>

                <!-- 테이블 -->
                <table>
                    <tr>
                        <th>과목코드</th>
                        <th>학년</th>
                        <th>학과</th>
                        <th>  구분  </th>
                        <th>과목명</th>
                        <th>교수</th>
                        <th>학점</th>
                        <th>수업시간</th>
                        <th>강의실</th>
                        <th>최대 수강 인원</th>
                    </tr>
                
                    <c:forEach var="dto" items="${dtoList}">
                    <tr>
                        <td>${dto.course_code}</td>
                        <td>${dto.department_id}</td>
                        <td>${dto.grade}</td>
                        <td>${dto.completion_type}</td>
                        <td>${dto.course_name}</td>
                        <td>${dto.professor}</td>
                        <td>${dto.credit}</td>
                        <td>${dto.class_time}</td>
                        <td>${dto.classroom}</td>
                        <td>${dto.max_capacity}</td>
                    </tr>
                    </c:forEach>
                                    
                    
                    
                </table>
                    
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