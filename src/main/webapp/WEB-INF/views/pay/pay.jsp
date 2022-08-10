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
		<button type="button" id="btn-kakao-pay" class="btn btn-outline-secondary">카카오페이로 결제하기</button>
	</div>
	
	
	<script type="text/javascript">
	//카카오 결제
	$(function(){
		$("#btn-kakao-pay").click(function(){
			
			// 필수입력값을 확인.
			var name = $("#form-payment input[name='pay-name']").val();
			var tel = $("#form-payment input[name='pay-tel']").val();
			var email = $("#form-payment input[name='pay-email']").val();
			
			if(name == ""){
				$("#form-payment input[name='pay-name']").focus()
			}
			if(tel == ""){
				$("#form-payment input[name='pay-tel']").focus()
			}
			if(email == ""){
				$("#form-payment input[name='pay-email']").focus()
			}
			
			// 결제 정보를 form에 저장한다.
			let totalPayPrice = parseInt($("#total-pay-price").text().replace(/,/g,''))
			let totalPrice = parseInt($("#total-price").text().replace(/,/g,''))
			let discountPrice = totalPrice - totalPayPrice 
			let usePoint = $("#point-use").val()
			let useUserCouponNo = $(":radio[name='userCoupon']:checked").val()
			
			// 카카오페이 결제전송
			$.ajax({
				type:'get'
				,url:'/order/pay'
				,data:{
					total_amount: totalPayPrice
					,payUserName: name
					,sumPrice:totalPrice
					,discountPrice:discountPrice
					,totalPrice:totalPayPrice
					,tel:tel
					,email:email
					,usePoint:usePoint
					,useCouponNo:useUserCouponNo	
					
				},
				success:function(response){
					location.href = response.next_redirect_pc_url			
				}
			})
		})
	})

	</script>
</body>
</html>
