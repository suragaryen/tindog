<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="reg-info">회원정보입력</div>
<form name="memfrm" id="memfrm" method="post" action="memberProc.jsp" onsubmit="return memberCheck()">
<table class="table">
<tr>
    <th>*아이디</th>
    <td style="text-align: left">
    	<input type="text" name="id" id="id" size="10" maxlength="10" readonly>
    	<input type="button" value="ID중복확인" onclick="idCheck()">
    </td>
</tr>
<tr>
    <th>*비밀번호</th>
    <td style="text-align: left">
    	<input type="password" name="passwd" id="passwd" size="10" maxlength="10" required>
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
    	<input type="text" name="mname" id="mname" size="20" maxlength="20" required>
    </td>
</tr>
<tr>
    <th>*생년월일</th>
	<td style="text-align: left">
		<label for="date">
			<input type="date" id="date" max="2024-06-20" min="1900-01-01">
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
    <th>*이메일</th>
    <td style="text-align: left">
    	<input type="text" name="email" id="email" size="30" maxlength="50" readonly>
    	<input type="button" value="Email중복확인" onclick="emailCheck()">
    </td>
</tr>
<tr>
    <th>전화번호</th>
    <td style="text-align: left"><input type="text" name="tel" id="tel" size="15" maxlength="14"></td>
</tr>
<tr>
    <th>우편번호</th>
    <td style="text-align: left">
      <input type="text" name="zipcode" id="zipcode" size="7"  readonly>
      <input type="button" value="주소찾기" onclick= "DaumPostcode()">    
    </td>
</tr>
<tr>  
    <th>주소</th>
    <td style="text-align: left"><input type="text" name="address1" id="address1" size="45" readonly></td>
</tr>
<tr>  
    <th>나머지주소</th>
    <td style="text-align: left"><input type="text" name="address2" id="address2" size="45"></td>
</tr>
<tr>  
  <th>유저사진</th>
  <td style="text-align: left">
	<div id="image_container userPic_container">
		 <img src="/img/defaultImg.jpg" alt="기본 이미지" id="uDefault_image"  style="width: 50%" />
	</div>
	<input type="file" id="userPic" name="userPic" accept="image/*">
  </td>
</tr>
</table>

<div class="reg-info">강아지 정보 입력</div>

<table class="table" id="dogReg_1">
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
  <th>대표사진등록</th>
  <td style="text-align: left">
	<div id="image_container mainPic_container">
		 <img src="/img/defaultImg.jpg" alt="기본 이미지" id="mDefault_image"  style="width: 50%" />
	</div>
	<input type="file" id="mainPic" name="mainPic" accept="image/*">
  </td>
</tr>
<tr>
  <th>기타사진등록</th>
  <td style="text-align: left">
	<input type="file" id="dPic1" name="dPic1" accept="image/*">
	<input type="file" id="dPic2" name="dPic2" accept="image/*">
	<input type="file" id="dPic2" name="dPic2" accept="image/*">
  </td>
</tr>
<tr>
    <th>강아지 소개</th>
    <td style="text-align: left">
    	<textarea rows="4" cols="50"></textarea>
    </td>
</tr>
<tr>
    <th>이상형월드컵 등록</th>
    <td style="text-align: left">
		<label>
			<input type="radio" name="gameReg" value="Y">
			예&nbsp;
		</label>
		<label>
			<input type="radio" name="gameReg" value="N">
			아니요
		</label>
    </td>
</tr>
<tr>
	<th>이상형월드컵 목적</th>
	<td style="text-align: left">
		<select id="purpose" name="size">
			<option value="1">산책</option>
			<option value="2">데이트</option>
			<option value="3">둘다</option>
		</select>
	</td>
</tr>
<tr>
</table>	

	<div id="appendHere">
		
	</div>
	
	
<div id="dogReg_btn" style="text-align: center; color: black;">
		<button onclick="addDReg()">강아지 추가 등록</button>
</div>
 

 <div style="text-align: center; color: black;">
        <input type="submit" value="회원가입"  class="btn btn-default"/>
        <input type="reset"  value="취소"     class="btn btn-default"/>
  </div>


</form>

<script>
	
	let tableCounter = 1; // 테이블 고유 ID를 위한 카운터
		
	function addDReg(){
		
		if(tableCounter < 3){
		
		tableCounter++; // 각 테이블마다 고유한 ID를 위해 증가
		
		var table = document.createElement('table');
        table.className = 'table';
        table.id = 'dogReg_' + tableCounter; // 고유한 ID 할당
		
		
		// 테이블에 필요한 내용 추가
		table.innerHTML = `
			
			<div class="reg-info">강아지${tableCounter} 정보입력 </div>
			
			<table class="table" id="dogReg1">
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
			  <th>대표사진등록</th>
			  <td style="text-align: left">
				<div id="image_container mainPic_container">
					 <img src="/img/defaultImg.jpg" alt="기본 이미지" id="mDefault_image"  style="width: 50%" />
				</div>
				<input type="file" id="mainPic" name="mainPic" accept="image/*">
			  </td>
			</tr>
			<tr>
			  <th>기타사진등록</th>
			  <td style="text-align: left">
				<input type="file" id="dPic1" name="dPic1" accept="image/*">
				<input type="file" id="dPic2" name="dPic2" accept="image/*">
				<input type="file" id="dPic2" name="dPic2" accept="image/*">
			  </td>
			</tr>
			<tr>
			    <th>강아지 소개</th>
			    <td style="text-align: left">
			    	<textarea rows="4" cols="50"></textarea>
			    </td>
			</tr>
			<tr>
			    <th>이상형월드컵 등록</th>
			    <td style="text-align: left">
					<label>
						<input type="radio" name="gameReg" value="Y">
						예&nbsp;
					</label>
					<label>
						<input type="radio" name="gameReg" value="N">
						아니요
					</label>
			    </td>
			</tr>
			<tr>
				<th>이상형월드컵 목적</th>
				<td style="text-align: left">
					<select id="purpose" name="size">
						<option value="1">산책</option>
						<option value="2">데이트</option>
						<option value="3">둘다</option>
					</select>
				</td>
			</tr>
        `;
			
		
		const target = document.getElementById('appendHere');
		target.appendChild(table);
		
		}else{
			alert("최대 3마리까지 등록하실 수 있습니다");
		}
		
		
	}//addDReg end
	
	
	// 대표사진 관련 코드
	const representativeImageInput = document.getElementById('userPic');
	const representativeImageContainer = document.getElementById('userPic_container');
	const representativeImage = document.getElementById('uDefault_image');

	representativeImageInput.addEventListener('change', (e) => {
		const file = e.target.files[0];
		const reader = new FileReader();

		reader.onload = function (event) {
			representativeImage.src = event.target.result;
		};

		if (file) {
			reader.readAsDataURL(file);
		} else {
			representativeImage.src = '/img/defaultImg.jpg'; // 기본 이미지로 설정
		}
	});

	// 유저사진 관련 코드
	const userImageInput = document.getElementById('mainPic');
	const userImageContainer = document.getElementById('mainPic_container');
	const userImage = document.getElementById('mDefault_image');

	userImageInput.addEventListener('change', (e) => {
		const file = e.target.files[0];
		const reader = new FileReader();

		reader.onload = function (event) {
			userImage.src = event.target.result;
		};

		if (file) {
			reader.readAsDataURL(file);
		} else {
			userImage.src = '/img/defaultImg.jpg'; // 기본 이미지로 설정
		}
	});
	
	
	//생년월일 오늘 날짜로 셋팅  
	
	//현재 날짜를 가져오는 함수
	function getCurrentDate(){
		const now = new Date();
		const year = now.getFullYear();
		let month = (now.getMonth()+1).toString();
		let day = now.getDate().toString();
		
		//월과 일이 한자리 수인 경우 앞에 0을 붙여준다
		month = month.length === 1 ? '0' + month : 	month;
		day = day.length === 1? '0' + day : day; 
		
		return `${year}-${month}-${day}`;
	}
	 // 현재 날짜로 값을 설정하는 코드
    document.getElementById('date').value = getCurrentDate();
		
		
</script>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>