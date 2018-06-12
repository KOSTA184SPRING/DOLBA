<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="${pageContext.request.contextPath}/resources/lib/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/lib/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/resources/lib/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/lib/css/read.css">
<link href="${pageContext.request.contextPath}/resources/lib/css/profile.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/lib/css/petProfile.css" rel="stylesheet" type="text/css">
<!------ Include the above in your HEAD tag ---------->
<script src='//production-assets.codepen.io/assets/editor/live/console_runner-079c09a0e3b9ff743e39ee2d5637b9216b3545af0de366d4b9aad9dc87e26bfd.js'></script>
<script src='//production-assets.codepen.io/assets/editor/live/events_runner-73716630c22bbc8cff4bd0f07b135f00a0bdc5d14629260c3ec49e5606f98fdd.js'></script>
<script
	src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-2c0dc5167d60a5af3ee189d570b1835129687ea2a61bee3513dee3a50c115a77.js'
></script>
<meta charset='UTF-8'>
<meta name="robots" content="noindex">
<link rel="canonical" href="https://codepen.io/chrisburton/pen/dlFky?limit=all&page=3&q=comment" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
</head>
<body>
	<div class="container" style="width: 600px" >
		<div class="row">
			<form role="form" class="contact-form">
				<h3 style="margin-bottom: 25px; text-align: center;">Notice 자세히 보기</h3>
				<div class="row">
					<div class="col-md-6">
						<div class="form-group">
							작성일 <input type="text" class="form-control" name="Date" autocomplete="off" id="Date" placeholder="2018-06-11">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							조회수 <input type="text" class="form-control" name="View" autocomplete="off" id="View" placeholder="322">
						</div>
					</div>
					<div class="col-md-6">
						<div class="form-group">
							작성자 <input type="text" class="form-control" name="name" autocomplete="off" id="name" placeholder="관리자">
						</div>
					</div>
					<div class="col-md-12">
						<div class="form-group">
							제목 <input type="text" class="form-control" name="subject" autocomplete="off" id="subject" placeholder="공지입니다 여러분">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="form-group">
							내용
							<textarea class="form-control textarea" rows="3" name="content" id="content" placeholder="공지입니다아아아아아아아아아아아"></textarea>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>