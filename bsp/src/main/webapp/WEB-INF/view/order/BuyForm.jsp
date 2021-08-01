<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>구매</title>
    <link rel='stylesheet' href='/bsp/css/yesol.css'/> <!-- 예솔 css -->
    <link rel="stylesheet" href="/bsp/css/base.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
    <script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>  <!--주소 script -->
    <script src="/bsp/js/main.js"></script><!--여기에 헤더 div에 넣을수있는 스크립트있음-->
    <script src="/bsp/js/yesol.js"></script>  <!-- 예솔 js -->
    <!-- ↓빼면 안되용 ㅠㅠ -->
    <script> 
    $(function(){
    	calc();
    	$('#savedmoney').change(function(){
    		console.log( $('#po').val() )
    		console.log($('#savedmoney').val())
    		if($('#savedmoney').val() > $('#po').val() ){
    			alert('보유포인트를 초과할수 없습니다.')
    			$('#savedmoney').val('0')
    			return false
    		}else if($('#savedmoney').val() < 100){
    			alert('100포인트 이상부터 사용할수있습니다.')
    			$('#savedmoney').val('0')
    			return false
    		}
    		calc();
    		var a = $('#total').text()-$('#savedmoney').val();
    		$('#total').text(a)
    		$('#total1').val(a)
    	});
    	
    	 $("#check_module").click(function () {
 	    	var IMP = window.IMP; // 생략가능
 	    	IMP.init('imp82310032');
 	    	// 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
 	    	// i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
 	    	IMP.request_pay({
 	    	pg: 'html5_inicis', // version 1.1.0부터 지원.
 	    	/*
 	    	'kakao':카카오페이,
 	    	html5_inicis':이니시스(웹표준결제)
 	    	'nice':나이스페이
 	    	'jtnet':제이티넷
 	    	'uplus':LG유플러스
 	    	'danal':다날
 	    	'payco':페이코
 	    	'syrup':시럽페이
 	    	'paypal':페이팔
 	    	*/
 	    	pay_method: 'card',
 	    	/*
 	    	'samsung':삼성페이,
 	    	'card':신용카드,
 	    	'trans':실시간계좌이체,
 	    	'vbank':가상계좌,
 	    	'phone':휴대폰소액결제
 	    	*/
 	    	merchant_uid: 'merchant_' + new Date().getTime(),
 	    	/*
 	    	merchant_uid에 경우
 	    	https://docs.iamport.kr/implementation/payment
 	    	위에 url에 따라가시면 넣을 수 있는 방법이 있습니다.
 	    	참고하세요.
 	    	나중에 포스팅 해볼게요.
 	    	*/
 	    	name: '주문명:결제테스트',
 	    	//결제창에서 보여질 이름
 	    	amount: 1000,
 	    	//가격
 	    	buyer_email: 'iamport@siot.do',
 	    	buyer_name: '구매자이름',
 	    	buyer_tel: '010-1234-5678',
 	    	buyer_addr: '서울특별시 강남구 삼성동',
 	    	buyer_postcode: '123-456',
 	    	m_redirect_url: 'https://www.yourdomain.com/payments/complete'
 	    	/*
 	    	모바일 결제시,
 	    	결제가 끝나고 랜딩되는 URL을 지정
 	    	(카카오페이, 페이코, 다날의 경우는 필요없음. PC와 마찬가지로 callback함수로 결과가 떨어짐)
 	    	*/
 	    	}, function (rsp) {
 	    	console.log(rsp);
 	    	if (rsp.success) {
 	    	var msg = '결제가 완료되었습니다.';
 	    	msg += '고유ID : ' + rsp.imp_uid;
 	    	msg += '상점 거래ID : ' + rsp.merchant_uid;
 	    	msg += '결제 금액 : ' + rsp.paid_amount;
 	    	msg += '카드 승인번호 : ' + rsp.apply_num;
 	    	} else {
 	    	var msg = '결제에 실패하였습니다.';
 	    	msg += '에러내용 : ' + rsp.error_msg;
 	    	}
 	    	alert(msg);
 	    	});
 	   	});
    });
    function calc() {
    	var sum=0;
    	var psum=0;
    	$('.b_price').each(function(){
    		var idx = $(this).index('.b_price');
    		sum += parseInt(this.innerText)*Number($(".pop_out").eq(idx).val());
    		psum += Number($(".point").eq(idx).text());
    		console.log(psum)
    	});
    	$(".totalPrice").text(sum);
    	$("#total").text(sum);
    	$("#total1").val(sum);
    	$("#totPoint").val(psum);
    }
  
    function fnCalCount(type, ths){
        var $input = $(ths).parents("td").find(".pop_out"); //부모부분인 td의 자식 name pop_out [수량입력값]
        var tCount = Number($input.val()); //입력값 숫자타입으로 변환
    	calc();
        var tEqCount = Number($(ths).parents("tr").find("td.bseq_ea").html()); 
                        //입력된 수량보다 +/-가 초과되지 않도록

        if(type=='p'){
            if(tCount < tEqCount){
            	$input.val(Number(tCount)+1);
            	calc();//재고보다 작을경우 +1
            }
        }else{
             if(tCount >0){
            	 $input.val(Number(tCount)-1);    //0보다 클 경우 -1
            	 calc();
				}
            }
        }
    function pointall() {
		$('#savedmoney').val($('#po').val());
		calc();
		var a = $('#total').text()-$('#savedmoney').val();
		$('#total').text(a)
		$('#total1').val(a)
    }
    

    </script>
   
</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include>
    <header id="header"> </header>
   <div class="wrap">
		<jsp:include page="../include/side2.jsp"></jsp:include>
        <div class="mem_content">
         <h1>주/문/과/정</h1>
            <form action="insert.do" method="POST">
            	<input type="hidden" name="m_no"value="${userInfo.m_no }"> 
                <div id="article">
                 <h4>주문 상품 정보</h4>
                    <table id="buy_tb" class="buy_info">
                        <tr>
                            <td>이미지</td>
                            <td>상품명</td>
                            <td id="price">가격</td>
                            <td id="stock">재고</td>
                            <td id="bseq_ea">수량</td>
                            <td id="del">삭제</td>
                        </tr>
                        <tr>
                            <td style="text-align: center;"><input type="image" src="/bsp/img/${vo.b_imgmain }" name="bookimage" style="width: 100px; height: 150px" ></td>
                            <td>${vo.b_title }<input type="hidden" name="b_no" value="${vo.b_no }"/></td>
                            <td id="price"><span class="b_price">${vo.b_price }</span>원/<span class=point>${vo.b_point }</span>원</td>
                            <td class="bseq_ea">500</td>  <!--  출력할 필요는 없음 -->
                            <td id="ant">
                             <button  class="button_s" type="button" onclick="fnCalCount('m', this);">-</button>
                             <input   type="text" class="pop_out"name="io_amount" value="${param.io_amount }" readonly="readonly" style="width: 50px; text-align: center;">
                             <button class="button_s"type ="button" onclick="fnCalCount('p',this);">+</button>  
                             </td>
                            <td id="del"><input class="button_s" type="button" value="X" onclick="deleteRow(this);"></td>
                        </tr>
                        
                    </table>
                    <h4>배송 방법 선택</h4>
                    <table id="buy_tb" >
                        <tr>
                            <td>배송방법</td>
                            <td >
                               <input type="radio" name="pb_delivery" value="cj">택배 <br>
                               <input type="radio" name="pb_delivery" value="post">우체국 택배 <br>
                               <input type="radio" name="pb_delivery" value="conv">편의점 방문 픽업 <br>
                            </td>
                        </tr>
                    </table>  
                    <h4>배송 정보 입력 (*필수 입력 항목)</h4>
                    <table id="buy_tb">
                     <tr>
                         <td>배송지 선택</td>
                         <td>
                             <input type="radio" name="dvryOpt" value="1" checked>주문고객 정보와 동일
                             <input type="radio" name="dvryOpt" value="2">최근 배송지 주소
                             <input type="radio" name="dvryOpt" value="3">배송주소록에서 선택
                             <input type="radio" name="dvryOpt" value="4">새주소 입력
                         </td>
                     </tr>
                     <tr>
                        <td>* 주문인</td>
                        <td>
                            <input type="text" name="name" value="${userInfo.m_name } " checked><br>
                            휴대폰 번호: 010-**34-5648
                        </td>
                     </tr>
                     <tr>
                        <td>* 받으시는 분</td>
                        <td>
                            <input type="text" name="pb_resname" value="전나나 " checked ><br>
                        </td>
                     </tr>
                     <tr>
                        <td>* 주소</td>
                        <td>
                             <input type="text"  name="pb_zipcode" maxlength="5" style="width:173px; " value="${userInfo.m_zipcode }" > 
                             <button class="button_s" type="button" onclick="openZipSearch()">검색</button>&nbsp;우편번호<br>
                             <input type="text" name="pb_addr1" style="width:250px; " value="${userInfo.m_addr1 }"/>기본주소<br>
                             <input type="text" name="pb_addr2" style="width:250px; "value="${userInfo.m_addr2 }"/>상세주소
                        </td>
                     </tr>
                     <tr>
                        <td>* 휴대전화번호</td>
                        <td>
                            <input type="text" name="pb_restel" style="width: 310px;" value="${userInfo.m_tel }"> 
                           
                        </td>
                     </tr>
                     <tr>
                        <td>전화번호 </td>
                        <td>
                            <input type="text" name="phone numbers1" style="width: 100px;" > -
                            <input type="text" name="phone numbers2" style="width: 100px;"> -
                            <input type="text" name="phone numbers3" style="width: 100px;"> 
                           
                        </td>
                     </tr>
                    </table>

                </div>
                <hr>
                <div id="article"> 
                  <h4>적립금 사용</h4>
                    <table  id="buy_now" style="text-align: center;">
                           <tr>
                               <td>적립금</td>
                               <td>보유액:<input type="text" readonly="readonly" id="po" value="${userInfo.m_point }">  원 ▷
                                   <input type="text" id="savedmoney"name="savedmoney" >
                                   <input class="button_s" type="button" name="전액" value="전액" onclick="pointall();"> 
                               </td>
                           </tr>
                       </table>
                       
                       <h4>결제 내역 확인</h4>
                       <table id="buy_tb" style="text-align: center;">
                        <tr >
                            <td colspan="2">
                                <span>주문 상품 금액 정보</span>
                                <span class="totalPrice"></span>원
                        </tr>
                        <tr>
                            <td>
                                <span>상품 주문 총액</span>
                                 <span class="totalPrice"></span><br>
                                <span>결제 총액</span>
                                <span id="total"></span>원<br>
                            </td>
                            <td>
                                <span>적립금</span>
                               <input type="text" id=totPoint name="p_usage" readonly="readonly" value=""/><br>
                                <span>배송료</span>
                                <span>0원</span><br>
                            </td>
                        </tr>
                        <tr >
                            <td colspan="2">
                                <span>남은 결제 금액</span>
                                <input type="text"  id="total1" name="pb_totalprice" value="" readonly="readonly">
                            </td>
                        </tr>
                        
                       </table>
                       <h4>결제 수단 선택</h4>
                       <table id="buy_tb" style="text-align: center;">
                           <tr>
                               <td>  
                                <input type="radio" name="paymentOption" value="accountN">무통장입금
                                <input type="radio" name="paymentOption"value="creditcard">실시간 계좌이체 
                                <input type="radio" name="paymentOption"value="accountY">신용카드 
                                  
                            </td>
                           </tr>
                       </table>
                       
                            <div class="buy_submit">
                                <input class="button_m" type="submit" value="결제" >
                                <input class="button_m" type="reset" value="취소" >
                                <button id="check_module" type="button">아임 서포트 결제 모듈 테스트 해보기</button>
                            </div>
                            <p>
							
                </div>    
            </form>
        </div>
   <aside class="mypage_ad">
                <div class="mypage_ad_name"><p>최근본상품</p></div>
                <div class="img_area">
                    <img src="img/book.jpg" width="70px" height="100px">
                </div>
                <div style="text-align: center;">
                    책이름
                </div>
            </aside> 
    </div>
    
    <div id="footer"></div>
    <jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>