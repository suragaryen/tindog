<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="mypage">
  <header class="avatar">
            <div id="nickname-gum">
            <img class="user-img" width="64" height="64" src="https://img.icons8.com/cotton/64/user-male-circle.png" alt="user-male-circle"/>     
            <p class="nickname"><%= nickname %></p>
            <span class="mypage-gumqty">(<img class="gum-img" width="26" height="26" src="https://img.icons8.com/metro/26/000000/dog-bone.png" alt="dog-bone"/> <%= gumqty %>)</span>
            </div>
  </header>
		<nav>
		  <ul>
		    <li><a href="/userInfo"><span>MY INFO</span></a></li>
		    <li><a href="/dogInfo"><span>DOGGY INFO</span></a></li>
		    <li><a href="#"><span id="payBtn" class="open-pay-popup">개껌페이충전</span></a></li>
		    <li><a href="/follow"><span>팔로우</span></a></li>
		    <li><a href="/chatList"><span>채팅</span></a></li>
		    <li><a href="/cut"><span>차단목록</span></a></li>
		    <li><a href="#"><span>상점관리</span></a></li>
		    <li><a href="#"><span id="btn" class="open-popup">이상형 월드컵 결과</span></a><br></li>
		    <li><a href="#"><span id="btn" class="">멍BTI 결과</span></a></li>
		    <li><a href="#"><span>공지사항</span></a></li>
		    <li><a href="#"><span>회원탈퇴</span></a></li>
		    
		  </ul>
		</nav>
	<!-- 		
        <div class="mypage_account">
            <a href="/userInfo"><p>내 정보</p></a>
            <a href="/dogInfo"><p>강아지 정보</p></a>
            <span>계정관리</span><br>
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
            <button id="btn" class="btn-open-popup">이상형 월드컵 결과</button><br>
            <button id="btn" class="">멍BTI 결과</button><br>
        </div>
        <div class="mypage_etc">
            <p>기타</p>
            <span>공지사항</span><br>
            <span>회원탈퇴</span><br>
        </div>
    </div>