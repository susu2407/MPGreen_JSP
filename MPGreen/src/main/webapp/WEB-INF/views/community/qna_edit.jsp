<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community qna-edit">
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
        <!-- ❌ 기존: qna_edit.do → ✅ 수정: edit.do -->
        <a href="${pageContext.request.contextPath}/community/edit.do?category=qna&boardId=${board.boardId}" class="sidebar-text">질문 수정</a>
      </div>
    </div>

    <section id="container">
      <!-- 사이드바 -->
      <div class="sidebar">
        <div class="sidebarHeader"><h2 class="sbTitle">커뮤니티</h2></div>
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

      <!-- 본문 -->
      <div class="board">
        <div class="boardUpper"><h3 class="buText">질문 수정</h3></div>
        <div class="notice-wrap">
          <!-- ❌ 기존: qna_edit.do → ✅ 수정: edit.do -->
          <form class="edit-form" action="${pageContext.request.contextPath}/community/edit.do?category=qna" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}" />

            <div class="form-row">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" value="${board.title}" required>
            </div>

            <div class="form-row">
              <label for="writer">작성자</label>
              <input type="text" id="writer" value="${board.writerName}" readonly>
            </div>

            <div class="form-row">
              <label for="content">내용</label>
              <textarea id="content" name="content" rows="10" required>${board.content}</textarea>
            </div>

            <div class="form-row">
              <label>
                <input type="checkbox" name="secret" ${board.secret ? "checked" : ""}> 비밀글로 작성하기
              </label>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">수정 완료</button>
              <!-- ❌ 기존: qna_view.do → ✅ 수정: view.do -->
              <a href="${pageContext.request.contextPath}/community/view.do?category=qna&boardId=${board.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
