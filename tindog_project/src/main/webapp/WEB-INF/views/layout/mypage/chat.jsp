<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<jsp:include page="/WEB-INF/views/common/config.jsp"></jsp:include>
<body class="wrapper">
<style>

* {
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    box-sizing: border-box;
}

html,body {
    height: 100%;
    overflow: hidden;
}

body {
    margin: 0;
    padding: 0;
    font-weight: 400;
    font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
    font-size: 1rem;
    line-height: 1.58;
    color: #333;
    /*  background-color: #f4f4f4; */
    height: 100%;



    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}

body:before {
    height: 50%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background: maxresdefault.jpg;
    content: "";
    z-index: 0;
}

.clearfix:after {
    display: block;
    content: "";
    clear: both;
}


.hidden {
    display: none;
}

.form-control {
    width: 100%;
    min-height: 38px;
    font-size: 15px;
    border: 1px solid #c8c8c8;
}

.form-group {
    margin-bottom: 15px;
}

input {
    padding-left: 10px;
    outline: none;
}

h1, h2, h3, h4, h5, h6 {
    margin-top: 20px;
    margin-bottom: 20px;
}

h1 {
    font-size: 1.7em;
}

a {
    color: #128ff2;
}

button {
    box-shadow: none;
    border: 1px solid transparent;
    font-size: 14px;
    outline: none;
    line-height: 100%;
    white-space: nowrap;
    vertical-align: middle;
    padding: 0.6rem 1rem;
    border-radius: 2px;
    transition: all 0.2s ease-in-out;
    cursor: pointer;
    min-height: 38px;
}

button.default {
    background-color: #e8e8e8;
    color: #333;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
}

button.primary {
    background-color: #25be38;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
    color: #fff;
}

button.accent {
    background-color: #1778dd;
    box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.12);
    color: #fff;
}

#username-page {
    text-align: center;
        margin-bottom: 500px;
}

.username-page-container {
    background: #fff;
    box-shadow: 0 1px 11px rgba(0, 0, 0, 0.27);
    border-radius: 2px;
    width: 100%;
    max-width: 500px;
    display: inline-block;
    margin-top: 42px;
    vertical-align: middle;
    position: relative;
    padding: 35px 55px 35px;
    min-height: 250px;
    position: absolute;
    top: 300px;
    left: 0;
    right: 0;
    margin: 0 auto;
    margin-top: -160px;
}

.username-page-container .username-submit {
    margin-top: 10px;
}


#chat-page {
    position: relative;
    height: 100%;
}

.chat-container {
    max-width: 700px;
    margin-left: auto;
    margin-right: auto;
    background-color: #fff;
    box-shadow: 0 1px 11px rgba(0, 0, 0, 0.27);
    margin-top: 30px;
    height: calc(100% - 60px);
    max-height: 600px;
    position: relative;
}

#chat-page ul {
    list-style-type: none;
    background-color: #FFF;
    margin: 0;
    overflow: auto;
    overflow-y: scroll;
    padding: 0 20px 0px 20px;
    height: calc(100% - 150px);
}

#chat-page #messageForm {
    padding: 20px;
}

#chat-page ul li {
    line-height: 1.5rem;
    padding: 10px 20px;
    margin: 0;
    border-bottom: 1px solid #f4f4f4;
}

#chat-page ul li p {
    margin: 0;
}

#chat-page .event-message {
    width: 100%;
    text-align: center;
    clear: both;
}

#chat-page .event-message p {
    color: #777;
    font-size: 14px;
    word-wrap: break-word;
}

#chat-page .chat-message {
    padding-left: 68px;
    position: relative;
}

#chat-page .chat-message i {
    position: absolute;
    width: 42px;
    height: 42px;
    overflow: hidden;
    left: 10px;
    display: inline-block;
    vertical-align: middle;
    font-size: 18px;
    line-height: 42px;
    color: #fff;
    text-align: center;
    border-radius: 50%;
    font-style: normal;
    text-transform: uppercase;
}

#chat-page .chat-message span {
    color: #333;
    font-weight: 600;
}

#chat-page .chat-message p {
    color: #43464b;
}

#messageForm .input-group input {
    float: left;
    width: calc(100% - 85px);
}

#messageForm .input-group button {
    float: left;
    width: 80px;
    height: 38px;
    margin-left: 5px;
}

.chat-header {
    text-align: center;
    padding: 15px;
    border-bottom: 1px solid #ececec;
}

.chat-header h2 {
    margin: 0;
    font-weight: 500;
}

.connecting {
    padding-top: 5px;
    text-align: center;
    color: #777;
    position: absolute;
    top: 65px;
    width: 100%;
}


@media screen and (max-width: 730px) {

    .chat-container {
        margin-left: 10px;
        margin-right: 10px;
        margin-top: 10px;
    }
}

@media screen and (max-width: 480px) {
    .chat-container {
        height: calc(100% - 30px);
    }

    .username-page-container {
        width: auto;
        margin-left: 15px;
        margin-right: 15px;
        padding: 25px;
    }

    #chat-page ul {
        height: calc(100% - 120px);
    }

    #messageForm .input-group button {
        width: 65px;
    }

    #messageForm .input-group input {
        width: calc(100% - 70px);
    }

    .chat-header {
        padding: 10px;
    }

    .connecting {
        top: 60px;
    }

    .chat-header h2 {
        font-size: 1.1em;
    }
}


</style>

<div id="username-page">
    <div class="username-page-container">

        <h1 class="title">버튼을 누르면 채팅이 시작됩니다.</h1>
        <form id="usernameForm" name="usernameForm">
            <div class="form-group">
                 <input type="hidden" id="name" placeholder="이름" autocomplete="off" class="form-control"/> 
            </div>
            <div class="form-group">
                <button type="submit" class="accent username-submit">채팅 시작</button>
            </div>
        </form>
    </div>
</div>
 

<div id="chat-page" class="hidden">
    <div class="chat-container">
        <div class="chat-header">
            <h2>데이트 채팅방</h2>
        </div>
        <div class="connecting">채팅 연결중...</div>
        <ul id="messageArea">
			<c:forEach var="item" items="${list}">
				<li class="chat-message">
					<i style="background-color: rgb(50, 199, 135);">${item.sender}</i>
					<span>${item.SENDER}</span>
					<p>${item.MESSAGE}</p>
				</li>
			</c:forEach>
        </ul>
        <form id="messageForm" name="messageForm" nameForm="messageForm" >
            <div class="form-group">
                <div class="input-group clearfix">
                	<input type="hidden" name="droomno" id="droomno" value="<%=(int)session.getAttribute("s_droomno")%>">
                    <input type="text" id="message" name="message" placeholder="메시지를 입력하세요..."
                           autocomplete="off" class="form-control" />
					<input type="hidden" name="sender" id="sender" value="<%=(String)session.getAttribute("s_nickname")%>">                           
                    <button type="submit" name="chatInsertBtn" id="chatInsertBtn" class="primary">전송</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script
        src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.4/sockjs.min.js"></script>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script>
	var nickname_from = '<%=(String)session.getAttribute("s_nickname")%>';
	
	$("#chatInsertBtn").click(function() {
		// alert();
		let message = $("#message").val();
		message = message.trim();
		if(message.length==0){			
			Swal.fire({
	        	title:"",
	        	text:"내용을 입력해주세요",	        	        	
	        	confirmButtonText: "확인"  	        	
	        })
			$("#message").focus();
		}else {
			// <form id="commentInsertForm"></form>의 컨트롤 요소를 전부 가져옴
			let insertData = $("#messageForm").serialize();
			// alert(insertData); // product_code=1&content=apple
			chatLogInsert(insertData); // 댓글 등록 함수 호출
		}
	});
	
	function chatLogInsert(insertData) { // 댓글 등록 함수
  		// alert("댓글 등록 함수 호출 : " + insertData);
  		$.ajax({
  			url     : '/chat/chatLogInsert' // 요청 명령어
  		  , type    : 'post'
  		  , data    : insertData        // 전달값
  	      , error   : function(error){
  	    	 Swal.fire({
  	        	title:"저장 실패",
  	        	text:"",
  	        	icon:"error",        	
  	        	confirmButtonText: "확인"  	        	
  	        })  	    	  
  	      }
  	      , success : function(result){
  	    	  // alert(result);
  	    	  if(result==1) { // 댓글 등록 성공
  	    		  // chatLogsList(); // 댓글 등록 후 댓글 목록 함수 호출
  	    		  // $("#content").val(''); // 기존 댓글 내용을 빈 문자열로 대입(초기화)
  	    		Swal.fire({
		        	title:"저장 완료",
		        	text:"",
		        	icon:"success",        	
		        	confirmButtonText: "확인"  	        	
        		})  	    		  
  	    	  }
  	      }
  		}); 
	}
</script>
<script src="/js/chat.js"></script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>
</body>
</html>