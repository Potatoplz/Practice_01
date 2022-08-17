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

			<div id="saleDetail" class="clearfix">
				<form>
					<div id="couponUse" class="form-info">
						<label class="pull-left">쿠폰 적용</label>
						<div>
							<ul>
								<li id="coupon"><select id="couponUse">
										<option value="0">사용할 쿠폰을 선택 하세요.</option>
										<option value="10">10% 할인쿠폰</option>
										<option value="30">30% 할인쿠폰</option>
										<option value="50">50% 할인쿠폰</option>
								</select> <span><button id="couponButton" type="button"
											class="btn btn-warning">적용</button></span></li>
							</ul>
						</div>
					</div>
					
					
					<div id="save" class="form-info clearfix">
						<label class="pull-left">적립금</label>
						<div class="pull-right">
							<ul>
								<li>사용가능한 적립금<input id="savePossible" type="text"
									disabled="disabled" value="2000" />원
								</li>
							</ul>
							<ul>
								<li><span><input id="saveUse" type="text" value="0" /></span>
									<button id="saveButton" type="button" class="btn btn-warning">적용</button></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
						<div id="total">
				<form>
					<div id="totalMoney">
						<label>총 상품 금액</label>
						<div class="sumLine pull-right">
							<input id="allPay" type="text" value="150000"
								disabled="disabled" />원
						</div>
					</div>
					<div id="totalSale" class="form-info">
						<label>총 할인 금액</label>
						<div class="sumLine pull-right">
							<input id="allSale" class="sum" type="text" value="0"
								disabled="disabled" />원
						</div>
					</div>
					<div id="totalSum">
						<label>총 결제 금액</label>
						<div id="sumT" class="sumLine pull-right">
							<input id="realPay" type="text" value="150000"
								disabled="disabled" />원
						</div>
					</div>
				</form>
			</div>
			<div id="infoCheck" class="clearfix">
				<input id="payCheck" type="checkbox" /> 결제정보를 확인하였으며, 구매진행에 동의합니다.
				<span><button id="payButton" type="button"
						class="btn btn-warning">결제하기</button></span>
			</div>
		</div>

<script type="text/javascript">
/* plus 버튼 기능 */
$(function() {

	var total = parseInt(($("#allPay").attr("value")));
	
	var use = 0;
	var real = 0;
	
	
	$("#couponButton").click(
			function() {
				
				var coupon = parseInt(($("#couponUse option:selected").val()));
				
				use = total * (coupon / 100);
				real = total - use;
				if (coupon == 0) {
					use = 0;
					$("#allSale").attr("value", use);
					$("#realPay").attr("value", real);
				} else {
					$("#allSale").attr("value", use);
					$("#realPay").attr("value", real);
					
				}
					
				
			});
	$("#saveButton").click(
			function() {
				
				var sale = parseInt(($("#allSale").attr("value")));
				var save = parseInt($("#saveUse").val());
				
				
				use = sale + save;
				real = total - use;
				$("#allSale").attr("value", use);
				$("#realPay").attr("value", real);
				
				
			});
});

</script>		
		
		
</body>
</html>