<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<!DOCTYPE html>
<html>
		<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		</head>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
		<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<body>
	<div>
	    <h2> 결제 데모</h2>
	        <button type="button" id="impPayment" class="btn btn-outline-secondary"> 결제 테스트</button>
	</div>
	<script type="text/javascript">
	
	    // 문서가 준비되면 제일 먼저 실행
	    $(document).ready(function(){$("#impPayment").click(function() {
	    	impPayment();
	     });
	    })
	    // 버튼 클릭하면 실행
	    function impPayment() {
	        IMP.init('imp82628187');
	        
		    IMP.request_pay({
		    pg: "kakaopay"
		    ,pay_method: "card"
	        ,merchant_uid:"imp_test_id"
	        ,name: "상품"
	        ,amount: 100
	        ,buyer_email:"aaa@naver.com"
	        ,buyer_name: "홍길동"
	        ,buyer_tel: "010-1234-5678" }
	        , function(rsp) { //callback
	            if (rsp.success) {
	                alert("[완료] imp_uid: "+ rsp.imp_uid+" / merchant_uid: " + rsp.merchant_uid);
	            } else {
	            	alert("[실패] 코드(" + rsp.error_code + ") / 메세지(" + rsp.error_msg + ")");
	            }
	        });
	    }
	</script>


	</body>
</html>