<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<%-- <script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/read.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css"> --%>
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/board/read.css">
<link rel="stylesheet" src="${pageContext.request.contextPath}/resources/lib/css/myPage/profile.css">

<!------ Include the above in your HEAD tag ---------->
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'
></script> -->

<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="canonical" href="https://codepen.io/chrisburton/pen/dlFky?limit=all&page=3&q=comment" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
<style type="text/css">
input{
margin-top: 10px;
}
textarea{
margin-top: 10px;
}

</style>
<SCRIPT >
function checkValid() {
	var f = window.document.updateForm;
	if ( f.subject.value == "" ) {
		alert( "제목을 입력해 주세요." );
		f.subject.focus();
		return false;
	}
	if ( f.content.value == "" ) {
		alert( "내용을 입력해 주세요." );
		f.content.focus();
		return false;
	}
	
    return true;
}

$(document).ready(function (){

    $("#fileInputNotice").on('change', function(){  // 값이 변경되면
        if(window.FileReader){  // modern browser
            var filename = $(this)[0].files[0].name;
        } else {  // old IE
            var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
        }
        // 추출한 파일명 삽입
        $("#Noticefile").val(filename);
    });
})

</SCRIPT>

</head>
<body>
	<div class="container" style="width: 600px;margin-top: 130px;margin-bottom: 50px;">
		<div class="row">
			<form role="form" class="contact-form" id="updateForm" name="updateForm" method="post" action="${pageContext.request.contextPath}/notice/updateNotice?${_csrf.parameterName}=${_csrf.token}" onsubmit="return checkValid()" enctype="multipart/form-data">
				<%-- <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/> --%>
				<input type="hidden" name="noticeId" value="${dto.noticeId}"/>
				<!--<input type="hidden" enctype="multipart/form-data"> -->
				<h3 style="margin-bottom: 25px; text-align: center;">Notice 수정하기</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							작성일 <input disabled="disabled" type="text" class="form-control" name="Date"
								autocomplete="off" id="Date" value="${requestScope.dto.noticeWriteday}">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							조회수 <input disabled="disabled" type="text" class="form-control" name="View"
								autocomplete="off" id="View" value="${requestScope.dto.noticeReadnum}">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							작성자 <input disabled="disabled" type="text" class="form-control" name="name"
								autocomplete="off" id="name" value="관리자">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							제목 <input type="text" class="form-control" name="noticeTitle"
								autocomplete="off" id="subject" value="${requestScope.dto.noticeTitle}">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea class="form-control textarea" rows="3" name="noticeContent"
								id="content">${requestScope.dto.noticeContent}</textarea>
						</div>
					</div>
				</div>
		
				<br>
				<button type="submit" id="submit" name="submit" class="btn btn-primary pull-right">수정 <i class="fa fa-paw"></i></button>
			</form>
		</div>
	</div>
</body>
</html>