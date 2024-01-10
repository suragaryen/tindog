<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeader.jsp"></jsp:include>


<br>
<br>
<br>

<div class="row">
    	<!-- varStatus="상태용 변수" -->
		<c:forEach items="${list}" var="row" varStatus="vs">
		
			<div class="col-sm-4 col-md-4">
				<c:choose>
					<c:when test="${row.MAINPHOTO != '-'}">
						
							<img src="/storage/${row.MAINPHOTO}" class="img-responsive margin" style="width:100%; height:60%" >
						</a>
					</c:when>
					<c:otherwise>
						등록된 사진 없음!!<br>
					</c:otherwise>
				</c:choose>
				<br>
   							
				<a href="detail/${row.UPRODUCT_NO}">${row.SUBJECT}</a>
									
				<br>
				<fmt:formatNumber value="${row.PRICE}" pattern="#,###"/>원
				<br>
				${row.AREA}
				
			</div>
            <!-- 한줄에 3칸씩 -->
            <c:if test="${vs.count mod 3==0}">
                </div><!-- row end -->
                <div style="height: 50px;"></div>
                <div class="row">
           </c:if>
             
		</c:forEach>		   	 
  </div><!-- row end -->

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>