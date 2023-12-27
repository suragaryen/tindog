<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="modal" id="modal">
   	<div class="modal_body">	
	<form>
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
						목적	
					</dt>		
					<dd class="item_dd">
						<ul class="item_list">
							<li class="sub_item">
								<label title="산책친구">
									<input type="checkbox" autocomplete="off" id="walk" name="walk" onclick="">
									산책친구
								</label>
								<label title="데이트">
									<input type="checkbox" autocomplete="off" id="purpose" name="purpose" onclick="">
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
									<input type="checkbox" autocomplete="off" id="small" name="small" onclick="">
									소형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="mid" name="mid" onclick="">
									중형견
								</label>
								<label title="사이즈">	
									<input type="checkbox" autocomplete="off" id="big" name="big" onclick="">
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
									<input type="checkbox" autocomplete="off" id="seoul" name="seoul" onclick="">
									서울/경기
								</label>
								<label title="지역">	
									<input type="checkbox" autocomplete="off" id="won" name="won" onclick="">
									강원권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="chung" name="chung" onclick="">
									충청권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="nam" name="nam" onclick="">
									영남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="ho" name="ho" onclick="">
									호남권
								</label>	
								<label title="지역">
									<input type="checkbox" autocomplete="off" id="etc" name="etc" onclick="">
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
									<input type="checkbox" autocomplete="off" id="boy" name="boy" onclick="">
									남
								</label>
								<label title="성별">
									<input type="checkbox" autocomplete="off" id="lady" name="lady" onclick="">
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
									<input type="checkbox" autocomplete="off" id="sad" name="sad" onclick="">
									중성화 O
								</label>
								<label title="중성화">
									<input type="checkbox" autocomplete="off" id="happy" name="happy" onclick="">
									중성화 X													
								</label>
							</li>
						</ul>
					</dd>
				</dl>
			</div>
		</div>
	</div>
	</form>
	<span class="close" id="closeModalBtn"> X </span>   

	<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 400px; margin-top: 100px;">
		<a href="start" style="display:inline-block;"><img src="/img/btn_이상형월드컵시작.png"></a>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>