		//유저사진 미리보기 
		const representativeImageInput = document.getElementById('userphotofile');
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
				representativeImage.src = 'img/defaultImg.jpg'; // 기본 이미지로 설정
			}
		});
		
		//강아사진 미리보기 
		const userImageInput = document.getElementById('mainphotofile');
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
				userImage.src = 'img/defaultImg.jpg'; // 기본 이미지로 설정
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
		document.getElementById('birth').value = getCurrentDate();

	
	/*
	let tableCounter = 1; // 테이블 고유 ID를 위한 카운터
		
	function addDReg(){
		
		if(tableCounter < 3){
		
		tableCounter++; // 각 테이블마다 고유한 ID를 위해 증가
		
		var table = document.createElement('table');
        table.className = 'table';
        table.id = 'dogReg_' + tableCounter; // 고유한 ID 할당
		
		
		// 테이블에 필요한 내용 추가
		table.innerHTML = `
			
			<table class="table" id="dogReg1">
				<input type="hidden" name="dogorder" value="${tableCounter}">
			<tr>
			    <td style="text-align: center">
			    	강아지${tableCounter} 정보입력
			    </td>
			</tr>
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
				<input type="file" id="mainphoto" name="mainphoto" accept="image/*">
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
			    	<textarea id="dog_detail" name="dog_detail" rows="4" cols="50"></textarea>
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
					<select id="purpose" name="purpose">
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
	
	*/
		