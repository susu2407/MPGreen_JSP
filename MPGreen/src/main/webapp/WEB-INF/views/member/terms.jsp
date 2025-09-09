<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>약관 안내</title>
    <style>
        body {
            margin: 0;
            padding: 40px 0; /* 위아래 여백 추가 */
            background-color: #f4f4f4;
            font-family: 'Noto Sans KR', sans-serif;
            color: #333;
        }

        /* 전체 레이아웃 (width: 990px) */
        .terms-container {
            width: 990px;
            background-color: #fff;
            padding: 30px;
            box-sizing: border-box;
            margin: 0 auto;
        }

        /* 상단 안내 문구 */
        .terms-header {
            font-size: 13px;
            color: #555;
            line-height: 1.6;
            margin-bottom: 20px;
        }
        .terms-header p {
            margin: 0;
        }
        .terms-header .highlight {
            color: #3F97F6;
        }

        /* 약관 내용 테이블 */
        .terms-table {
            width: 100%;
            border-top: 2px solid #071F4B;
            border-collapse: collapse;
            
        }

        .terms-table th, .terms-table td {
            border-bottom: 1px solid #e0e0e0;
            padding: 20px;
            vertical-align: top;
        }
        
        .terms-table th {
            width: 180px;
            background-color: rgba(244, 248, 252, 1);
            font-weight: 500;
            text-align: center;
            vertical-align: middle;
            border-right: 1px solid #e0e0e0;
        }
        
        .terms-table td {
            padding: 15px 20px;
        }

        .print-link {
            text-align: right;
            margin-bottom: 10px;
        }

        .print-link a {
            font-size: 13px;
            color: #555;
            text-decoration: none;
        }

        .terms-content-box {
            height: 226px;
            border: 1px solid #ccc;
            overflow-y: auto;
            padding: 15px;
            font-size: 13px;
            color: #666;
            line-height: 1.7;
        }

        /* 전체 동의 체크박스 영역 */
        .agreement-section {
            margin-top: 20px;
            text-align: left;
            font-size: 14px;
        }
        /* 체크박스와 텍스트 세로 정렬 맞추기 */
        .agreement-section input {
            margin-right: 8px;
            vertical-align: middle;
        }
        .agreement-section label {
             vertical-align: middle;
        }

        /* 하단 버튼 영역 */
        .button-section {
            margin-top: 30px;
            display: flex;
            justify-content: flex-end;
            gap: 8px;
        }

        .btn {
            width: 56px;
            height: 48px;
            border: none;
            color: white;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
        }

        .btn-cancel {
            background-color: #8B8B8B;
        }

        .btn-next {
            background-color: #3F97F6;
        }

    </style>
</head>
<body>
    <div class="terms-container">
        <header class="terms-header">
            <p><span class="highlight">※</span> 대학구성원(학생, 교직원)은 회원가입 없이 학번, 교번(사번) 아이디를 사용하여 로그인할 수 있습니다</p>
            <p>※ 만 14세 미만 아동의 경우 홈페이지 회원가입에 제한이 있습니다.</p>
        </header>

        <main>
            <table class="terms-table">
                <tbody>
                    <tr>
                        <th>이용약관</th>
                        <td>
                            <div class="terms-content-box">약관내용 출력하기</div>
                        </td>
                    </tr>
                    <tr>
                        <th>개인정보 수집안내</th>
                        <td>
                            <div class="terms-content-box">약관내용 출력하기</div>
                        </td>
                    </tr>
                </tbody>
            </table>

            <div class="agreement-section">
                <label>
                    <input type="checkbox" name="agree-all">
                    <span>위의 홈페이지 이용에 따른 회원가입 약관 및 개인정보 수집ㆍ이용에 모두 동의합니다.</span>
                </label>
            </div>
            
            <div class="button-section">
                <button type="button" class="btn btn-cancel">취소</button>
                <button type="button" class="btn btn-next">다음</button>
            </div>
        </main>
    </div>
</body>
</html>