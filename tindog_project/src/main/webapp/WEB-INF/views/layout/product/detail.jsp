<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>     
     
    
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body>
<jsp:include page="/WEB-INF/views/common/header.jsp"></jsp:include>

<div class="container text-center">

 <div class="row">
    <div class="col-sm-12">
    	<p><h3>상품 상세보기 / 상품수정 / 상품삭제</h3></p>
	    <p>
	        <button type="button" onclick="location.href='/list'" class="btn btn-primary">상품전체목록</button>
	    </p> 
    </div><!-- col end -->
  </div><!-- row end -->

  <div class="row">
    <div class="col-sm-12">
		 <form name="productfrm" id="productfrm" method="post" enctype="multipart/form-data">
			<input type="hidden" name="UPRODUCT_NO" value="${product.UPRODUCT_NO}">		 
		 	<table class="table table-hover">
			    <tbody style="text-align: left;">
			    <tr>
					
					<td>
					 	<c:if test="${product.MAINPHOTO != '-'}">
			               	<img src="/storage/${product.MAINPHOTO}" width="100px">
			            </c:if>
			            <br><br>
						<input type="file" name="img1" class="form-control"> 
					</td>
			    </tr>
			    
			    <tr>
					
					<td> <input type="text" name="SUBJECT" class="form-control" value="${product.SUBJECT}"> </td>
			    </tr>
			    <tr>
					
					<td> <input type="number" name="PRICE" class="form-control" value="${product.PRICE}"> </td>
			    </tr>
			    <tr>
					
					<td> 
					    <textarea rows="5" cols="60" name="INFO" class="form-control">${product.INFO}</textarea>     
					 </td>
			    </tr>
			    
			    <tr>
					<td colspan="2" align="center">
					    <input type="button" value="상품수정"    onclick="product_update()" class="btn btn-warning"> 
			            <input type="button" value="상품삭제"    onclick="product_delete()" class="btn btn-danger"> 
			            <input type="button" value="장바구니담기" onclick="product_cart()"   class="btn btn-info">
					</td>
			    </tr>   
			    </tbody> 
		    </table>
		 </form>
    </div><!-- col end -->
  </div><!-- row end -->

</div><!-- container end -->




<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>