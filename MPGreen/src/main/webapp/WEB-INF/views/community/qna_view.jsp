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
        <a href="${pageContext.request.contextPath}/community/list.do?category=qna" class="sidebar-text">질문과 답변</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">질문 보기</a>
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
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna" style="color:#fff">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 상세보기 -->
      <div class="view-wrap">
        <div class="view-header">
          <h2 class="view-title">${board.title}</h2>
          <div class="view-meta">
            <span>작성자: ${board.writerName}</span>
            <span>작성일: ${board.created_at}</span>
            <span>조회수: ${board.viewCount}</span>
            <c:choose>
              <c:when test="${board.qnaStatus eq 'wait'}">
                <span class="qna-status wait">답변대기</span>
              </c:when>
              <c:when test="${board.qnaStatus eq 'done'}">
                <span class="qna-status done">답변완료</span>
              </c:when>
            </c:choose>
          </div>
        </div>

        <div class="view-content">
          <p>${board.content}</p>
        </div>

        <!-- 답변 영역 -->
        <div class="answer-section">
          <h4>답변</h4>
          <div class="answer-content">
            <c:choose>
              <c:when test="${empty board.answerContent}">
                아직 답변이 등록되지 않았습니다.
              </c:when>
              <c:otherwise>
                <p>${board.answerContent}</p>
              </c:otherwise>
            </c:choose>
          </div>
        </div>

        <!-- 하단 버튼 -->
        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/list.do?category=qna" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/edit.do?category=qna&boardId=${board.boardId}" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/delete.do?category=qna&boardId=${board.boardId}" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
