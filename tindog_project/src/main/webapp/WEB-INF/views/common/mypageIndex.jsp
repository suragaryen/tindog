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
            <a href="/cut"><span>차단사용자관리</span></a><br>
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
    
  
    
    <!-- 모달 시작 -->
    <!-- 이상형 월드컵 모달 시작  -->
    
    <div class="modal" id="modal">
   	<div class="modal_body">
		<h3>이상형 월드컵 결과</h3>
		<div>1등</div>		
		<span class="close" id="closeModalBtn"> X </span>   
	</div>
	</div>
	
	<!-- 이상형 월드컵 모달 끝 -->
	
	
	<!--개껌페이 모달 시작 -->
	<div class="pay-modal" id="pay-modal">
		   		<div class="pay-modal-body">
				
					<div id="pay-table"> <!-- 개껌페이 시작 -->
						<table class="table table-borderless">
						  <tbody>
						    <tr>
						      <th scope="row"><img width="30" height="30" src="https://img.icons8.com/ios-glyphs/30/dog-bone.png" alt="dog-bone"/> 1개</th>
						      <td>1000원</td>
						      <td><button type="button" class="btn btn-outline-primary" onclick="requestPay('1', '1','${email}')">결제</button></td>
						    </tr>
						    <tr>
						      <th scope="row"><img width="30" height="30" src="https://img.icons8.com/ios-glyphs/30/dog-bone.png" alt="dog-bone"/> 11개</th>
						      <td>10000원</td>
						      <td><button type="button" class="btn btn-outline-primary" onclick="requestPay('11', '1','${email}')">결제</button></td>
						    </tr>
						    <tr>
						      <th scope="row"><img width="30" height="30" src="https://img.icons8.com/ios-glyphs/30/dog-bone.png" alt="dog-bone"/> 35개</th>
						      <td>30000원</td>
						      <td><button type="button" class="btn btn-outline-primary" onclick="requestPay('35', '1','${email}')">결제</button></td>
						    </tr>
						  </tbody>
						</table>
					</div> <!-- 개껌페이 끝  -->
					
				<span class="pay-close" id="close-pay-btn"> X </span>   
			</div>
			</div>
	
	<!--개껌페이 모달 끝 -->
	
	<!-- 모달 끝 -->
	
	
</body>
<!--결제 관련 -->
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
