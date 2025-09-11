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
        <a href="${pageContext.request.contextPath}/community/list.do?category=news" class="sidebar-text">뉴스 및 칼럼</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">게시글 보기</a>
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
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news" style="color:#fff">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="view-wrap">
        <div class="view-header">
          <!-- 뉴스/칼럼 뱃지 -->
          <c:choose>
            <c:when test="${board.newsType eq 'news'}">
              <span class="badge type-news">뉴스</span>
            </c:when>
            <c:otherwise>
              <span class="badge type-column">칼럼</span>
            </c:otherwise>
          </c:choose>

          <!-- 제목 -->
          <h2 class="view-title">${board.title}</h2>
          <div class="view-meta">
            <span>작성자: ${board.writerName}</span>
            <span>작성일: ${board.created_at}</span>
            <span>조회수: ${board.viewCount}</span>
          </div>
        </div>

        <div class="view-content">
          <p>${board.content}</p>
        </div>

        <c:if test="${not empty board.fileName}">
          <div class="view-file">
            <strong>첨부파일:</strong>
            <a href="${pageContext.request.contextPath}/upload/${board.fileName}" download>${board.fileName}</a>
          </div>
        </c:if>

        <!-- 댓글 영역 (임시, 추후 별도 DTO 필요) -->
        <div class="comment-section">
          <h4>댓글</h4>
          <ul class="comment-list">
            <li>
              <div class="comment-meta">
                <span class="comment-writer">김철수</span>
                <span class="comment-date">2024.04.09 10:30</span>
              </div>
              <div class="comment-content">
                새로운 건물 소식 반갑습니다!
              </div>
            </li>
          </ul>
        </div>

        <div class="comment-form">
          <form action="${pageContext.request.contextPath}/community/commentWrite.do" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}">
            <input type="text" name="writer" placeholder="작성자" required>
            <textarea name="content" rows="3" placeholder="댓글을 입력하세요" required></textarea>
            <button type="submit" class="btn-submit">댓글 등록</button>
          </form>
        </div>

        <div class="view-actions">
          <a href="${pageContext.request.contextPath}/community/list.do?category=news" class="btn">목록</a>
          <a href="${pageContext.request.contextPath}/community/edit.do?category=news&boardId=${board.boardId}" class="btn primary">수정</a>
          <a href="${pageContext.request.contextPath}/community/delete.do?category=news&boardId=${board.boardId}" class="btn danger">삭제</a>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
