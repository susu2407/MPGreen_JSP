<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community free-delete">
  <main>
    <!-- 상단 경로 -->
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/free.do" class="sidebar-text">자유게시판</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/free_delete.do?boardId=${board.boardId}" class="sidebar-text">글삭제</a>
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
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free" style="color:#fff">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data">자료실</a></li>
          </ul>
        </div>
      </div>

      <!-- 본문 삭제 확인 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">글삭제</h3>
        </div>

        <div class="notice-wrap">
          <form action="${pageContext.request.contextPath}/community/delete.do" method="post">
				  <input type="hidden" name="category" value="free" />
				  <input type="hidden" name="boardId" value="${board.boardId}" />
				  <p>정말로 이 글을 삭제하시겠습니까?</p>
				  <div class="form-actions">
				    <button type="submit" class="btn-danger">네</button>
				    <a href="${pageContext.request.contextPath}/community/view.do?category=free&boardId=${board.boardId}" class="btn-cancel">아니요</a>
				  </div>
				</form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
