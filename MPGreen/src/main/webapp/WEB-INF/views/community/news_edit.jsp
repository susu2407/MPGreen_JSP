<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community news-edit">
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
        <!-- ❌ 기존: news_edit.do → ✅ 수정: edit.do -->
        <a href="${pageContext.request.contextPath}/community/edit.do?category=news&boardId=${board.boardId}" class="sidebar-text">글수정</a>
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

      <!-- 본문 수정 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">수정</h3>
        </div>

        <div class="notice-wrap">
          <!-- ❌ 기존: news_edit.do → ✅ 수정: edit.do -->
          <form class="edit-form" action="${pageContext.request.contextPath}/community/edit.do?category=news" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}" />

            <div class="form-row">
              <label for="category">구분</label>
              <select id="category" name="category" required>
                <option value="news" ${board.category == 'news' ? 'selected' : ''}>뉴스</option>
                <option value="column" ${board.category == 'column' ? 'selected' : ''}>칼럼</option>
              </select>
            </div>

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

            <%-- 파일 업로드 부분은 DTO에 속성이 없으므로 주석 처리 --%>
            <%-- 
            <div class="form-row">
              <label for="file">첨부파일</label>
              <input type="file" id="file" name="file">
            </div>
            --%>

            <div class="form-actions">
              <button type="submit" class="btn-submit">수정 완료</button>
              <a href="${pageContext.request.contextPath}/community/view.do?category=news&boardId=${board.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
