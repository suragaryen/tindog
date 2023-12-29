<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>

<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px; margin-top: 100px;">
				<!--<p class="d-inline-block border rounded-pill py-1 px-4" style="color: black;">이상형 강아지 선택하기</p>-->
               <p><button class="btn btn-dark btn-lg disabled">이상형 강아지 선택하기</button></p>
 </div>

	<form name="worldcupForm" method="post"  action="worldcup/optionstart">
	<div class="option_nav">
		<div class="nav_header">
			<h4 class="nav_title">
				<span>상세검색</span>
			</h4>		
		</div>
		<div class="spec_list">
			<div class="detail_list">
				<dl class=spec_item>
					<dt class="item_dt">
						나이	
					</dt>		
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="0세">
									<input type="checkbox" autocomplete="off" id="age0" name="age" value=0>
									0세
								</label>
								<label title="1세">
									<input type="checkbox" autocomplete="off" id="age1" name="age" value=1>
									1세							
								</label>
								<label title="2세">
									<input type="checkbox" autocomplete="off" id="age2" name="age" value=2>
									2세							
								</label>
								<label title="3세">
									<input type="checkbox" autocomplete="off" id="age3" name="age" value=3>
									3세							
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						목적	
					</dt>		
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="산책친구">
									<input type="checkbox" autocomplete="off" id="walk" name="purpose" value=1>
									산책친구
								</label>
								<label title="데이트">
									<input type="checkbox" autocomplete="off" id="purpose" name="purpose" value=2>
									데이트								
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						사이즈
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="사이즈">
									<input type="checkbox" autocomplete="off" id="small" name="size" value=1>
									소형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="mid" name="size" value=2>
									중형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="big" name="size" value=3>
									대형견								
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						지역
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="seoul" name="ck">
									서울/경기
								</label>
								<label title="지역">	
									<input type="checkbox" autocomplete="off" id="won" name="ck">
									강원권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="chung" name="ck">
									충청권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="nam" name="ck">
									영남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="ho" name="ck">
									호남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="etc" name="ck">
									기타						
								</label>
							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						성별
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
						
								<label title="성별">
									<input type="checkbox" autocomplete="off" id="boy" name="sex" value="M">
									남
								</label>
								<label title="성별">
									<input type="checkbox" autocomplete="off" id="lady" name="sex" value="F">
									여													
								</label>

							</li>
						</ul>
					</dd>
					<dt class="item_dt">
						중성화
					</dt>
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="중성화">
									<input type="checkbox" autocomplete="off" id="sad" name="neutral" value="o">
									중성화 O
								</label>
								<label title="중성화">
									<input type="checkbox" autocomplete="off" id="happy" name="neutral" value="x">
									중성화 X													
								</label>
							</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	<span class="close" id="closeModalBtn"> X </span>   

	<div id="submit" style="margin-top: 35px"> 
		<input type="image" src="/img/btn_이상형월드컵시작.png">
		<!-- <img src="/img/btn_이상형월드컵시작.png" class="btn" onclick="location.href='worldcup/optionstart'"> -->
	</div>
	</form>


<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>