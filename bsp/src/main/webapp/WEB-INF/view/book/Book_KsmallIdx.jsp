<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="/bsp/css/base.css">
    <link rel="stylesheet" href="/bsp/css/big.css">
    
    <script src="/bsp/js/main.js"></script>
    <script src="/bsp/js/big.js"></script>
    <title>Document</title>
 

    <style>
 
    
   .paging > li {
   	list-style-type: none; float: left; padding-left:5px; padding-top: 10px; text-align: center;
   }
    .paging {
    margin-left: 450px;	
     }
    


    #all{
        width: 100px; 
        height: 30px; 
        float : right; 
        margin-right: 150px;
        margin-top: -9px;
    
    }
    #divnum{
        width:100px;
        height:40px; 
        font-size: 13px;
        margin-top: 7px;
    }

    .button_m{
    font-size:14px; text-decoration:none !important; white-space:nowrap; display:inline-block; vertical-align:baseline; position:relative; cursor:pointer; padding:4px 20px; min-width:64px; border:2px solid #221f1f; color:#fff !important; margin:0 2px; text-align:center; font-weight:bold; border-radius:5px; background-color:#221f1f;
    }
    .button_s{
    font-size:12px; text-decoration:none !important; white-space:nowrap; display:inline-block; vertical-align:baseline; position:relative; cursor:pointer; padding:2px 10px; min-width:20px; border:2px solid #221f1f; color:#fff !important; margin:0 2px; text-align:center; font-weight:bold; border-radius:5px; background-color:#221f1f;
    }
    .number{
        margin-left: 45px;
    }
     
    </style>
    


</head>
<body>
 <jsp:include page="../include/header.jsp"></jsp:include>
    <div class="wrap">
       <jsp:include page="../include/sideKbig.jsp"></jsp:include>
            
        </div>  

        <div class="mem_content">
            <h2 class="main_top"> ${param.b_ctgdetail }</h2>   
           <!--  <div class="smallCtg_area"> 
                <div class="cate2"><a href="#">임신</a></div> 
                <div class="cate2"><a href="#">태교</a></div> 
               

            </div> -->
            <div class="indexWrap">
                <div class="indexPlace">
                    <span class="original"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=${bookVo.orderby}&direct=ASC">기본순</a></span>
                    <span class="sell"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.strPage-1 }&stype=${bookVo.stype}&sval=${bookVo.sval}&orderby=${bookVo.orderby}&direct=${bookVo.direct}">판매량순</a></span>
                    <span class="new"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_intodate&direct=desc">신상품순</a></span>
                    <span class="lowPrice"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_price&direct=ASC">최저가순</a></span>
                    <span class="highPrice"><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&orderby=b_price&direct=DESC">최고가순</a></span>
                    
                   
                    
                     <div class="divPlace">
                        <select name="divnum" id="divnum" >
                            <option value ="1" selected>5개씩 보기</option>
                            <option value ="2" >10개씩 보기</option>
                            <option value ="3" >15개씩 보기</option> 
                        </select> 
                           <input type='checkbox' name='bestcheck'  onclick='selectAll(this)'/> 전체선택
                    </div> 
                    
                    <br>
                    <br>
                    <hr>
                 <!-- 페이지처리  -->                      
                    <div class="pagenate clear">
                        <ul class='paging'> 
                        <c:if test="${bookVo.strPage > bookVo.pageRange}">
                         <!-- Book_KsmallIdx.do?b_ctgno2key=1&b_ctgdetail=임신/출산&b_ctgno1=1 -->
                        <li><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.strPage-1 }&orderby=${bookVo.orderby}&direct=${bookVo.direct}"> < </a></li>
                        </c:if>
                        <c:forEach var="rp" begin="${bookVo.strPage}" end="${bookVo.endPage }">
                            <li><a href='Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${rp}&orderby=${bookVo.orderby}&direct=${param.direct}' <c:if test="${rp==bookVo.reqPage }">class='current'</c:if>>${rp }</a></li>
                        </c:forEach>
                        <c:if test="${bookVo.totPage > bookVo.endPage}">
                        	<li><a href="Book_KsmallIdx.do?b_ctgno2key=${bookVo.b_ctgno2key}&b_ctgdetail=${bookVo.b_ctgdetail}&b_ctgno1=${bookVo.b_ctgno1}&reqPage=${bookVo.endPage+1 }&orderby=${bookVo.orderby}&direct=${bookVo.direct}"> > </a></li>
                        </c:if>
                        </ul> 
                    </div>
               
                </div>
         
            </div>
            <!-- 1 -->
            <c:forEach var = "vo" items="${list }">
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="s_bookImg"><img src = "/bsp/img/${vo.b_imgmain }" style="height: 250px; width: 180px;"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>${vo.b_title }</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">${vo.b_author } <span class="s_bookPub"> | ${vo.b_publisher }</span><span class="s_bookDate"> | <fmt:formatDate value="${vo.b_regdate}" pattern="yyyy-MM-dd" /></span> </span>
                        <span class="s_price"><b>${vo.b_price }</b>원  &nbsp; 적립금 : ${vo.b_point }원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        																																										
                        <span class="s_story">
                        ${vo.b_content } <br>
                            『임신 출산 육아 대백과』 2020년 개정판은 가이드 구성에 충실, 
                            초보엄마들이 궁금해할만한 내용을 사진으로 꼼꼼하게 보여준다. 임신 중 요가, 산후조리, 
                            육아의 기초(신생아 목욕시키기, 옷 입히기 등)의 과정을 사진으로 보여주어 슬라이드를 넘기듯
                             한눈에 육아의 기초를 알 수 있다. 
                            임신, 출산, 육아의 각 단계를 ...
                        </span>
                    </div>
                </div>
                <div class="s_payWrap">
                    <div class="s_pay">
                        <div class="s_pay1">
                            <input type="checkbox" name="bestcheck" >
                            &nbsp;
                          
                           
                                <div class="number">
                                    <button  class="button_s" type ="button" id="decreaseQuantity">-</button> 
                                    <input type="number" id="numberUpDown"  style="width: 50px; text-align: center;" value="1">
                                      <button class="button_s" type="button" id="increaseQuantity">+</button>
                                  </div> 
                                      
                        
                        </div>
                        <div class="s_pay2">
                            <input type="button" class="btn1" value="카트에 넣기" >
                        </div>
                        <div class="s_pay3">
                            <input type="button"  class="btn2" value="바로구매">
                        </div>
                    </div>
                </div>
             </div>
             </c:forEach>
            




          
        
            </div>   
         <aside class="mypage_ad">
            <div class="mypage_ad_name"><p>최근본상품</p></div>
            <div class="img_area">
                <img src="/bsp/img/newEye1.jpg" width="70px" height="100px">
            </div>
            <div style="text-align: center;">
                책이름
            </div>
        </aside> 
    </div>
     <jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>