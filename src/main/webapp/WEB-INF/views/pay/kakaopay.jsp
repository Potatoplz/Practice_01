<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<meta charset="UTF-8">
		<title> Home </title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
	</head>
<body>
		<h2>카카오 페이</h2>
		
	<br>	
	<div>
		<button type="button" id="kakaopay_btn" class="btn btn-outline-secondary">카카오페이로 결제하기</button>
	</div>
	
	
	<script type="text/javascript">

	$(function() {
		$('#kakaopay_btn').click(function() {
			$.ajax({
			 	url:'kakaopay' 
			 	,dataType:'json' 
			 	,success:function(data){
//			 		alert(data.tid);
			 		var box = data.next_redirect_pc_url;
			 		location.href = box;
			 	} 
			 	, error:function(error){
			 	  	alert(error);
				}
			});//ajax
		});//click
	});//function
	
	</script>
</body>
</html>
