<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<body class="wrapper">
<div class="mypage">
        <div class="mypage_header">
            	<img class= src="/img/profile.jpg"><br>            
            <p class="nickname">회원 닉네임</p>
        </div>
        <div class="mypage_account">
            <a href="/userInfo"><p>내 정보</p></a>
            <a href="/dogInfo"><p>강아지 정보</p></a>
            <a href="/dogGumPay"><span>개껌페이</span></a><br>
            <a href="/follow"><span>팔로우관리</span></a><br>
            <a href="/chatList"><span>채팅관리</span></a><br>
            <span>차단사용자관리</span><br>
        </div>
        <div class="mypage_deal">
            <p>나의 거래</p>
            <span>관심목록</span><br>
            <span>판매내역</span><br>
            <span>구매내역</span><br>
            <span>받은후기</span><br>
        </div>
        <div class="mypage_result">
            <p>나의 친구찾기</p>                        
            <button id="btn" class="open-popup">이상형 월드컵 결과</button><br>
            <button id="btn" class="">멍BTI 결과</button><br>
        </div>
        <div class="mypage_etc">
            <p>기타</p>
            <span>공지사항</span><br>
            <span>회원탈퇴</span><br>
        </div>
    </div>
    <div class="modal" id="modal">
   	<div class="modal_body">
		<h3>이상형 월드컵 결과</h3>
		<div>1등</div>		
		<span class="close" id="closeModalBtn"> X </span>   
	</div>
	</div>
</body>