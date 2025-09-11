<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ include file="./_header.jsp" %>
<body class="page-community">
  <main>

    <div class="top-bar">
      <div class="top-bar-content">
        <img src="../images/ico-home.png" alt="홈">
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="#" class="sidebar-text">커뮤니티</a>
        <img src="../images/bg-path-arrow.png" alt=">">
        <a href="${pageContext.request.contextPath}/community/list.do?category=jobs" class="sidebar-text">취업정보</a>
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

      <!-- 본문 -->
      <div class="board">
        <div class="boardUpper">
          <h3 class="buText">취업정보</h3>
        </div>

        <div class="notice-wrap">
          <!-- 검색 -->
          <form class="notice-toolbar" action="${pageContext.request.contextPath}/community/list.do" method="get">
            <input type="hidden" name="category" value="jobs"/>
            <select class="notice-field" name="field" aria-label="검색 대상 선택">
              <option value="all">전체</option>
              <option value="title">업체</option>
              <option value="">채용정보</option>
            </select>
            <input class="notice-input" type="text" name="q" placeholder="검색어를 입력해 주세요" value="${param.q}"/>
            <button type="submit" class="notice-btn">검색</button>
          </form>

          <!-- 게시판 테이블 -->
          <table class="notice-table jobs-table">
            <colgroup>
              <col class="col-no">
              <col class="col-status">
              <col class="col-title">
              <col class="col-content">
              <col class="col-deadline">
              <col class="col-views">
            </colgroup>
            <thead>
              <tr>
                <th class="col-no">번호</th>
                <th class="col-status">상태</th>
                <th class="col-title">업체</th>
                <th class="col-content">채용정보</th>
                <th class="col-deadline">마감일</th>
                <th class="col-views">조회</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="dto" items="${dtoList}" varStatus="status">
                <tr>
                  <td class="col-no">${pagenationDTO.currentPageStartNum - status.index}</td>
                  <td class="col-status">
                    <c:choose>
                      <c:when test="${dto.qnaStatus eq 'open'}">
                        <span class="job-badge is-open">모집중</span>
                      </c:when>
                      <c:otherwise>
                        <span class="job-badge is-closed">마감</span>
                      </c:otherwise>
                    </c:choose>
                  </td>
					<td class="col-company">${dto.title}</td> <!-- 업체 -->
					<td class="col-title">
					  <a href="${pageContext.request.contextPath}/community/view.do?category=jobs&boardId=${dto.boardId}">
					    ${dto.content}
					  </a>
					</td>
                  <td class="col-deadline">${dto.updated_at}</td>
                  <td class="col-views">${dto.viewCount}</td>
                </tr>
              </c:forEach>
            </tbody>
          </table>

          <!-- 페이지네이션 -->
          <div class="page">
            <div class="prev">
              <c:if test="${pagenationDTO.currentPage > 1}">
                <a href="${pageContext.request.contextPath}/community/list.do?category=jobs&pg=1" class="paging">
                  <img src="../images/btn-first-page.png">
                </a>
                <a href="${pageContext.request.contextPath}/community/list.do?category=jobs&pg=${pagenationDTO.currentPage - 1}" class="paging">
                  <img src="../images/btn-prev-page.png">
                </a>
              </c:if>
            </div>

            <div class="pagenumber">
              <c:forEach var="i" begin="${pagenationDTO.pageGroupStart}" end="${pagenationDTO.pageGroupEnd}">
                <a href="${pageContext.request.contextPath}/community/list.do?category=jobs&pg=${i}"
                   class="${i == pagenationDTO.currentPage ? 'active' : ''}">${i}</a>
              </c:forEach>
            </div>

            <div class="last">
              <c:if test="${pagenationDTO.currentPage < pagenationDTO.lastPageNum}">
                <a href="${pageContext.request.contextPath}/community/list.do?category=jobs&pg=${pagenationDTO.currentPage + 1}" class="paging">
                  <img src="../images/btn-next-page.png">
                </a>
                <a href="${pageContext.request.contextPath}/community/list.do?category=jobs&pg=${pagenationDTO.lastPageNum}" class="paging">
                  <img src="../images/btn-last-page.png">
                </a>
              </c:if>
            </div>
          </div>

          <!-- 글쓰기 버튼 -->
          <a href="${pageContext.request.contextPath}/community/write.do?category=jobs" class="btn-write">글쓰기</a>
        </div>
      </div>
    </section>
  </main>
  <%@ include file="./_footer.jsp" %>
</body>
