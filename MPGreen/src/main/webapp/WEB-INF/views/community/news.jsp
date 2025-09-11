<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=news" class="sidebar-text">뉴스 및 칼럼</a>
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

      <!-- 본문 리스트 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">뉴스 및 칼럼</h3>
        </div>

        <div class="notice-wrap">
          <!-- 검색 -->
          <form class="notice-toolbar" action="${pageContext.request.contextPath}/community/list.do" method="get">
            <input type="hidden" name="category" value="news" />
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="title">제목</option>
              <option value="writer">작성자</option>
              <option value="newsType">구분</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" value="${param.q}" />
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 뉴스 리스트 -->
          <table class="notice-table news-table">
            <colgroup>
              <col class="col-no">
              <col class="col-type">
              <col class="col-title">
              <col class="col-writer">
              <col class="col-date">
              <col class="col-views">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-type">구분</th>
                <th class="col-title">제목</th>
                <th class="col-writer">작성자</th>
                <th class="col-date">작성일</th>
                <th class="col-views">조회</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="board" items="${dtoList}">
                <tr>
                  <td class="col-no">${board.boardId}</td>
                  <td class="col-type">
                    <c:choose>
                      <c:when test="${board.newsType eq 'news'}">
                        <span class="nc-badge is-news">뉴스</span>
                      </c:when>
                      <c:otherwise>
                        <span class="nc-badge is-column">칼럼</span>
                      </c:otherwise>
                    </c:choose>
                  </td>
                  <td class="col-title">
                    <a href="${pageContext.request.contextPath}/community/view.do?category=news&boardId=${board.boardId}">
                      ${board.title}
                    </a>
                  </td>
                  <td class="col-writer">${board.writerName}</td>
                  <td class="col-date">${board.created_at}</td>
                  <td class="col-views">${board.viewCount}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>

          <!-- 페이지네이션 -->
          <div class="page">
            <div class="prev">
              <c:if test="${pagenationDTO.prev}">
                <a href="?category=news&pg=${pagenationDTO.startPage - 1}" class="paging">
                  <img src="../images/btn-prev-page.png" />
                </a>
              </c:if>
            </div>
            <div class="pagenumber">
              <c:forEach var="i" begin="${pagenationDTO.startPage}" end="${pagenationDTO.endPage}">
                <a href="?category=news&pg=${i}" class="${i == pagenationDTO.currentPage ? 'active' : ''}">${i}</a>
              </c:forEach>
            </div>
            <div class="last">
              <c:if test="${pagenationDTO.next}">
                <a href="?category=news&pg=${pagenationDTO.endPage + 1}" class="paging">
                  <img src="../images/btn-next-page.png" />
                </a>
              </c:if>
            </div>
          </div>

          <!-- 글쓰기 버튼 -->
          <a href="${pageContext.request.contextPath}/community/write.do?category=news" class="btn-write">글쓰기</a>
        </div>
      </div>
    </section>
  </main>
  <%@ include file="./_footer.jsp" %>
</body>
