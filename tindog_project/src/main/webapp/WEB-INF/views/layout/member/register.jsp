<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="reg-info">회원정보입력</div>
<form name="register-form" id="register-form" method="post" action="userInsert" enctype="multipart/form-data">

<table class="table">
<tr>
    <th>*이메일</th>
    <td style="text-align: left">
    	<input type="text" name="email" id="email" size="30" maxlength="50">
    	<input type="button" value="Email중복확인" onclick="emailCheck()">
    </td>
</tr>
<tr>
    <th>*비밀번호</th>
    <td style="text-align: left">
    	<input type="password" name="password" id="password" size="10" maxlength="10" required>
    </td>
</tr>
<tr>
    <th>*비밀번호 확인</th>
    <td style="text-align: left">
    	<input type="password" name="repasswd" id="repasswd" size="10" maxlength="10" required>
    </td>
</tr>
<tr>
    <th>*이름</th>
    <td style="text-align: left">
    	<input type="text" name="name" id="name" size="20" maxlength="20" required>
    </td>
</tr>
<tr>
    <th>*생년월일</th>
	<td style="text-align: left">
		<label for="date">
			<input type="date" name="birth" id="birth" max="2024-06-20" min="1900-01-01">
		</label>
	</td>
</tr>
<tr>
    <th>*닉네임</th>
    <td style="text-align: left">
    	<input type="text" name="nickname" id="nickname" size="20" maxlength="20" required>
    </td>
</tr>
<tr>
    <th>전화번호</th>
    <td style="text-align: left"><input type="text" name="phone" id="phone" size="15" maxlength="14"></td>
</tr>
<tr>
    <th>우편번호</th>
    <td style="text-align: left">
      <input type="text" name="post" id="post" size="7"  readonly>
      <input type="button" value="주소찾기" onclick= "DaumPostcode()">   
      <!-- ----- DAUM 우편번호 API 시작 ----- -->
  <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
    <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
  </div> 
    </td>
</tr>
<tr>  
    <th>주소</th>
    <td style="text-align: left"><input type="text" name="addr" id="addr" size="45" readonly></td>
</tr>
<tr>  
    <th>나머지주소</th>
    <td style="text-align: left"><input type="text" name="detailaddr" id="detailaddr" size="45"></td>
</tr>
<tr>  
  <th>유저사진</th>
  <td style="text-align: left">
	<div id="image_container userPic_container">
		 <img src="img/defaultImg.jpg" alt="기본 이미지" id="uDefault_image"  style="width: 50%" />
	</div>
	<input type="file" id="userphotofile" name="userphotofile" accept="image/*">
  </td>
</tr>
</table>

<div class="reg-info">강아지 정보 입력</div>

<table class="table" id="dogReg_1">
<input type="hidden" name="dogorder" value="1">
<tr>
    <th style="width: 21%;">강아지 이름</th>
    <td style="text-align: left">
    	<input type="text" name="dname" id="dname" size="10" maxlength="10">
    </td>
</tr>
<tr>
    <th>강아지 나이</th>
    <td style="text-align: left">
    	<input type="number" name="age" id="age" size="1" maxlength="2">살
    </td>
</tr>
<tr>
    <th>성별</th>
    <td style="text-align: left">
		<label>
			<input type="radio" name="sex" value="m">
			남아&nbsp;
		</label>
		<label>
			<input type="radio" name="sex" value="f">
			여아
		</label>
    </td>
</tr>
    <th>중성화 여부</th>
    <td style="text-align: left">
		<label>
			<input type="radio" name="neutral" value="o">
			예&nbsp;
		</label>
		<label>
			<input type="radio" name="neutral" value="x">
			아니오
		</label>
    </td>
</tr>
<tr>
    <th>무게</th>
    <td style="text-align: left">
    	<input type="text" name="weight" id="weight" size="10" maxlength="10">kg
    </td>
</tr>
<tr>
	<th>사이즈</th>
	<td style="text-align: left">
		<select id="size" name="size">
			<option value="1">소형견</option>
			<option value="2">중형견</option>
			<option value="3">대형견</option>
		</select>
	</td>
</tr>
<tr>
	<th>강아지 견종 </th>
	<td style="text-align: left">
		<select id="dogcd" name="dogcd">
			<option value="1">포메라이언</option>
			<option value="2">사모예드</option>
			<option value="3">골든리트리버</option>
			<option value="4">토이푸들</option>
			<option value="5">보더콜리</option>
			<option value="6">알래스칸 클리카이</option>
			<option value="7">비숑 프리제</option>
			<option value="8">시바견</option>
			<option value="9">진돗개</option>
			<option value="10">폼피츠</option>
		</select>
	</td>
</tr>
<tr>
  <th>대표사진등록</th>
  <td style="text-align: left">
	<div id="image_container mainPic_container">
		 <img src="img/defaultImg.jpg" alt="기본 이미지" id="mDefault_image"  style="width: 50%" />
	</div>
	<input type="file" id="mainphotofile" name="mainphotofile" accept="image/*">
  </td>
</tr>
<tr>
  <th>기타사진등록</th>
  <td style="text-align: left">
	<input type="file" id="dPic1" name="dPic1" accept="image/*">
	<input type="file" id="dPic2" name="dPic2" accept="image/*">
	<input type="file" id="dPic3" name="dPic3" accept="image/*">
  </td>
</tr>
<tr>
    <th>강아지 소개</th>
    <td style="text-align: left">
    	<textarea id="dog_detail" name="dog_detail" rows="4" cols="30"></textarea>
    </td>
</tr>
<tr>
    <th>이상형 월드컵 등록</th>
    <td style="text-align: left">
		<label>
			<input type="radio" name="gamereg" value="o">
			예&nbsp;
		</label>
		<label>
			<input type="radio" name="gamereg" value="x">
			아니오
		</label>
    </td>
</tr>
<tr>
	<th>이상형월드컵 목적</th>
	<td style="text-align: left">
		<select id="purpose" name="purpose">
			<option value="1">산책</option>
			<option value="2">데이트</option>
			<option value="3">둘다</option>
		</select>
	</td>
</tr>
<tr>
</table>	
	
	<div class="blank" style="margin-top: 20px;"></div>
 

 <div style="text-align: center; color: black;">
        <input type="submit" value="회원가입"  class="btn btn-primary"/>
        <input type="reset"  value="취소"     class="btn btn-primary"/>
  </div>


</form>



  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script>
      // 우편번호 찾기 찾기 화면을 넣을 element
      var element_wrap = document.getElementById('wrap');

      function foldDaumPostcode() {
          // iframe을 넣은 element를 안보이게 한다.
          element_wrap.style.display = 'none';
      }

      function DaumPostcode() {
          // 현재 scroll 위치를 저장해놓는다.
          var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
          new daum.Postcode({
              oncomplete: function(data) {
                  // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                  // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                  // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                  var addr = ''; // 주소 변수
                  var extraAddr = ''; // 참고항목 변수

                  //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                  if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                      addr = data.roadAddress;
                  } else { // 사용자가 지번 주소를 선택했을 경우(J)
                      addr = data.jibunAddress;
                  }

                  // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                  if(data.userSelectedType === 'R'){
                      // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                      // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                      if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                          extraAddr += data.bname;
                      }
                      // 건물명이 있고, 공동주택일 경우 추가한다.
                      if(data.buildingName !== '' && data.apartment === 'Y'){
                          extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                      }
                      // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                      if(extraAddr !== ''){
                          extraAddr = ' (' + extraAddr + ')';
                      }
                      // 조합된 참고항목을 해당 필드에 넣는다.
                      document.getElementById("detailaddr").value = extraAddr;
                  
                  } else {
                      document.getElementById("detailaddr").value = '';
                  }

                  // 우편번호와 주소 정보를 해당 필드에 넣는다.
                  document.getElementById('post').value = data.zonecode;
                  document.getElementById("addr").value = addr;
                  // 커서를 상세주소 필드로 이동한다.
                  document.getElementById("detailaddr").focus();

                  // iframe을 넣은 element를 안보이게 한다.
                  // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                  element_wrap.style.display = 'none';

                  // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                  document.body.scrollTop = currentScroll;
              },
              // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
              onresize : function(size) {
                  element_wrap.style.height = size.height+'px';
              },
              width : '100%',
              height : '100%'
          }).embed(element_wrap);

          // iframe을 넣은 element를 보이게 한다.
          element_wrap.style.display = 'block';
      }
  </script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
</body>
</html>