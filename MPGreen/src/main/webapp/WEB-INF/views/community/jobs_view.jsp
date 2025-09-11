<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community view-page">
  <main>
    <!-- 상단 경로 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=jobs" class="sidebar-text">취업정보</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">채용공고 보기</a>
      </div>
    </div>

    <section id="container">
      <!-- 좌측 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/notice.do">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs" style="color:#fff">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <h2 class="view-title">${board.title}</h2>

        <div class="view-content">
          <table class="view-table">
            <tr>
              <th>상태</th>
              <td>
                <c:choose>
                  <c:when test="${board.qnaStatus eq 'open'}">
                    <span class="badge type-open">모집중</span>
                  </c:when>
                  <c:otherwise>
                    <span class="badge type-closed">마감</span>
                  </c:otherwise>
                </c:choose>
              </td>
            </tr>
            <tr>
              <th>업체명</th>
              <td>${board.writerName}</td>
            </tr>
            <tr>
              <th>채용정보</th>
              <td>
                ${board.content}
              </td>
            </tr>
            <tr>
              <th>마감일자</th>
              <td>${board.updated_at}</td>
            </tr>
          </table>
        </div>

        <!-- 하단 버튼 -->
        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/list.do?category=jobs" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/edit.do?category=jobs&boardId=${board.boardId}" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/delete.do?category=jobs&boardId=${board.boardId}" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
