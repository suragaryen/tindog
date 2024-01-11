<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
    

    
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/sessionHeaderAlert.jsp"></jsp:include>
<div class="container text-center">
    <!-- 본문 시작 -->
  <div class="row">
    <div class="col-sm-12">
      <p><h3>상품등록</h3></p>
      <p> 
         <button type="button" onclick="location.href='list'" class="btn btn-priary">상품전체목록</button>
      </p>
     </div><!-- col end -->
   </div><!-- row end -->
   
   <div class="row">
     <div class="col-sm-12">
       <form name="productfrm" id="productfrm" method="post" action="insert" enctype="multipart/form-data">
         <table class="table table-hover">
			<tbody style="text-align: left;">
			<tr>
			    <td>제목</td>
			    <td> <input type="text" name="subject" class="form-control"> </td>
			</tr>
			<tr>
			    <td>상품가격</td>
				<td> <input type="number" name="price" class="form-control"> </td>
			</tr>
            <tr>
				<td>상품설명</td>
				<td> 
					<textarea rows="5" cols="60" name="info" class="form-control"></textarea>     
				</td>
			</tr>
			<tr>
			    <td>상품분류</td>
			    <td> <input type="text" name="uproduct_cd" placeholder="아래 상품 분류 코드로 입력해주세요" 
			    class="form-control"> 패션:01, 위생:02, 장난감:03, 사료:04, 간식:05, 외출용품:06, 하우스/안전용품:07</td>
			</tr>
		    <tr>
				<td>상품 메인 사진</td>
				<td> <input type="file" name="img1" class="form-control"> </td>
			</tr>
			<tr>
			    <td>닉네임</td>
			    <td> <input type="text" name="nickname" class="form-control"> </td>
			</tr>
			<tr>
			    <td>희망지역</td>
			    <td> <input type="text" name="area" class="form-control"> </td>
			</tr>
			<tr>
				<td>상품 부가 사진</td>
				<td> <input type="file" name="img2" class="form-control"> </td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					 <input type="submit" value="상품등록" class="btn btn-success"> 
				</td>
			</tr>   
				</tbody> 
			</table>           
       </form>
     </div>
   </div>
   </div> 
	





<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>