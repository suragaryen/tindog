<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include> 
		
	<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px; margin-top: 50px !important;" >
                <h1>TINDOG 강아지 이상형 월드컵</h1>
    </div>
	<div class="container">
            <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px; margin: 50px;">
                <p class="d-inline-block border rounded-pill py-1 px-4">Top 4</p>
                <h1>주간 인기 댕댕이🐶</h1>
            </div>
             <div class="row g-4">
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/dog1.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>꾸꾸</h5>
                            <p class="text-primary">골든리트리버/1살</p>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/dog2.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>꽁이</h5>
                            <p class="text-primary">포메라이언/2살</p>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/dog3.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>릴리</h5>
                            <p class="text-primary">말티즈/5살</p>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.7s">
                    <div class="team-item position-relative rounded overflow-hidden">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="img/dog4.jpeg" alt="">
                        </div>
                        <div class="team-text bg-light text-center p-4">
                            <h5>새침이</h5>
                            <p class="text-primary">3살/비글</p>
                            <div class="team-social text-center">
                                <a class="btn btn-square" href=""><i class="fab fa-facebook-f"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-twitter"></i></a>
                                <a class="btn btn-square" href=""><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
    		</div>
    </div>	    
	<div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 800px;">
		<button id="btn" class="btn-open-popup" style="display:inline-block; background-color: white;"><img src="img/btn_이상형강아지등록.png"></button>
		<a href="worldcup/start" style="display:inline-block;"><img src="img/btn_이상형월드컵시작.png"></a>
	</div>
	
	<div class="worldcupmodal" id="worldcupmodal">
   	<div class="modal_content">	
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

	<div style="margin-top: 35px"> 
		<a href="worldcup/start" style="display:inline-block;"><img src="/img/btn_이상형월드컵시작.png"></a>
	</div>
	</div>
</div>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>