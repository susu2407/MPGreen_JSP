<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>교과과정</title>
    <link rel="stylesheet" href="/css/common/layout.css">
    <link rel="stylesheet" href="/css/common/header.css">
    <link rel="stylesheet" href="/css/common/footer.css">

    <link rel="stylesheet" href="/css/student/Student.css">
</head>
<body>
      <!-- ===== 메인 ===== -->
  <main>

    <!-- ===== 상단바 ===== -->
     <div class="top-bar">
        <div class="top-bar-content">
            <img src="../images/ico-home.png" alt="홈">
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">학생지원</a>
            <img src="../images/bg-path-arrow.png" alt="next">
            <a href="#" class="sidebar-text">교과과정</a>
        </div>
    </div>

    <section id="container"> 
        <div class="sidebar"> <!--사이드바-->
            <div class="sidebarHeader"> <!--사이드바 윗부분(제목 영역)-->
                <h2 class="sbTitle">학생지원</h2> <!--사이드바 제목-->
            </div>
            <div class="sidebarMenu"> <!--사이드바 하위 메뉴-->
                <ul class="list"> <!--사이드바 리스트-->
                    <li class="item"> <!--사이드바 리스트 요소-->
                        <a href="#" class="itemText">수강신청</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">수강신청내역</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">교과과정</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">성적조회</a>
                    </li>
                    <li class="item">
                        <a href="#" class="itemText">학적</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="board"> <!--본문 영역-->
                <div class="boardUpper">
                    <h3 class="buText">교과과정</h3>
                </div>
                <div class="boardLower">
                        <div class="tableHeader">
                            <h4>공통과목(전공)</h4>
                        </div>
                        <div>
                            <table class="major">
                                <thead>
                                    <tr>
                                        <th>학년</th>
                                        <th>코드번호</th>
                                        <th>이수구분</th>
                                        <th>교과목명</th>
                                        <th>학점</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="6">1</td>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>C언어</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>프로그래밍이론</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>컴퓨터과학개론</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>이산수학</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>인터넷과웹기초</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>컴퓨팅사고와인공지능</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="6">2</td>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>자바프로그래밍</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>자료구조</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>컴퓨터구조</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>선형대수</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>알고리즘</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>HTML/CSS/Javascript</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="6">3</td>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>웹 프로그래밍</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>프로그래밍언어론</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>컴퓨터과학개론</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>이산수학</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>알고리즘</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>HTML/CSS/Javascript</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td rowspan="6">4</td>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>자바프로그래밍</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>자료구조</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>컴퓨터구조</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>선형대수</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>알고리즘</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <td>G01940</td>
                                        <td>공통</td>
                                        <td>HTML/CSS/Javascript</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    <div class="tableHeader">
                        <h4>선택과목(교양)</h4>
                    </div>
                    <div>
                        <table class="selection">
                            <thead>
                                <tr>
                                    <th>수준</th>
                                    <th>코드번호</th>
                                    <th>이수구분</th>
                                    <th>교과목명</th>
                                    <th>학점</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td rowspan="6">1</td>
                                    <td>G01940</td>
                                    <td>공통</td>
                                    <td>HTML/CSS</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>G01940</td>
                                    <td>공통</td>
                                    <td>HTML/CSS</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>G01940</td>
                                    <td>공통</td>
                                    <td>HTML/CSS</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>G01940</td>
                                    <td>공통</td>
                                    <td>HTML/CSS</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>G01940</td>
                                    <td>공통</td>
                                    <td>HTML/CSS</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

         </div>

    </section>

  </main>
</body>
</html>