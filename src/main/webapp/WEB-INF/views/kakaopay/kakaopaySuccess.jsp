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
	<div>
	<h4>카카오페이 결제가 정상적으로 완료되었습니다.</h4>
 	
 	<table>
 		<tr>
 			<th>결제일시 : </th>
 			<td>${info.approved_at}</td>
 		</tr>
 		<tr>
 			<th>주문번호 : </th>
 			<td>${info.partner_order_id}</td>
 		</tr>
 		<tr>
 			<th>상품명 : </th>
 			<td>${info.item_name}</td>
 		</tr>
 		<tr>
 			<th>상품수량 : </th>
 			<td>${info.quantity}</td>
 		</tr>
 		<tr>
 			<th>결제금액 : </th>
 			<td>${info.amount.total}</td>
 		</tr>
 		<tr>
 			<th>결제방법 : </th>
 			<td>${info.payment_method_type}</td>
 		</tr>
 	</table>
 	
	</div>
	
	<%-- 결제일시: ${info.approved_at}<br/>
	주문번호: ${info.partner_order_id}<br/>
	상품명:   ${info.item_name}<br/>
	상품수량: ${info.quantity}<br/>
	결제금액: ${info.amount.total}<br/>
	결제방법: ${info.payment_method_type}<br/> --%>
	
	<%-- <h2>[[${info}]]</h2> --%>
</script>
</html>