<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./_header.jsp" %>

<body class="page-community data-edit">
  <main>
    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=data" class="sidebar-text">자료실</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/edit.do?category=data&boardId=${board.boardId}" class="sidebar-text">글수정</a>
      </div>
    </div>

    <section id="container">
      <div class="sidebar">
        <div class="sidebarHeader">
          <h2 class="sbTitle">커뮤니티</h2>
        </div>
        <div class="sidebarMenu">
          <ul class="list">
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=notice">공지사항</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=news">뉴스 및 칼럼</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=jobs">취업정보</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=free">자유게시판</a></li>
            <li class="item"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=qna">질문과 답변</a></li>
            <li class="item active"><a class="itemText" href="${pageContext.request.contextPath}/community/list.do?category=data" style="color:#fff">자료실</a></li>
          </ul>
        </div>
      </div>

      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">자료실 글수정</h3>
        </div>

        <div class="notice-wrap">
          <!-- 파일 업로드 막고, category=data 파라미터 추가 -->
          <form class="edit-form" action="${pageContext.request.contextPath}/community/edit.do?category=data" method="post">
            <input type="hidden" name="boardId" value="${board.boardId}"/>

            <div class="form-row">
              <label for="title">제목</label>
              <input type="text" id="title" name="title" value="${board.title}" required>
            </div>

            <div class="form-row">
              <label for="writer">작성자</label>
              <input type="text" id="writer" name="writer" value="${board.writer}" readonly>
            </div>

            <div class="form-row">
              <label for="content">내용</label>
              <textarea id="content" name="content" rows="10" required>${board.content}</textarea>
            </div>

            <!-- 파일 업로드 막음 -->
            <div class="form-row">
              <label for="file">첨부파일</label>
              <p style="color:#888">※ 현재 파일 수정은 지원하지 않습니다.</p>
              <c:if test="${not empty board.files}">
                <p>기존 파일:
                  <c:forEach var="f" items="${board.files}">
                    <a href="${pageContext.request.contextPath}/upload/${f.filePath}">${f.fileName}</a><br/>
                  </c:forEach>
                </p>
              </c:if>
            </div>

            <div class="form-actions">
              <button type="submit" class="btn-submit">수정 완료</button>
              <a href="${pageContext.request.contextPath}/community/view.do?category=data&boardId=${board.boardId}" class="btn-cancel">취소</a>
            </div>
          </form>
        </div>
      </div>
    </section>
  </main>
</body>

<%@ include file="./_footer.jsp" %>
