<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/big.css">
    <script src="js/main.js"></script>
    <script src="js/big.js"></script>
    <title>Document</title>

    <style>
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
 
    .best_indexWrap{    
   border: 1px solid gray;
   width: 1000px;
   height: 120px;
   margin: auto;
   margin-top: 20px;
   
   text-align: left;
   border-radius: 30px;

   
}

.best_wrap {
    width: 1150px;
    height: auto;
    /* border: 3px solid red; */
    margin-left: 100px;
    margin-top: 20px;
    padding: 20px 20px 0px 20px;

}
.best_clickNum {
   position: relative;
   font-size: 15px;
   margin-top: 10px;
   
}
.best_clickNum > *{
   margin: 15px 10px;
}

.bestmain_top{
    margin-left: 100px;
   margin-bottom: 30px;
}

.hrwrap{
    width: 1150px;
    height: auto;
    /* border: 3px solid red; */
    margin-left: 100px;
    margin-top: 10px;
    /* padding: 20px 20px 0px 20px; */
}





    </style>
    <script>


// 전체선택해제
    const $container = document.querySelector('.container');
    const $inputs = [...$container.children];
    const $agreeBtn = document.querySelector('.all');

    $all.onclick = () => {
      if ($inputs.filter(input => input.checked).length === $inputs.length) {
        $inputs.forEach(input => { input.checked = false; });
      } else {
        $inputs.forEach(input => {
          input.checked = true;
        });
      }
    };
    




    //베스트체크 전체선택
    function selectAll(selectAll)  {
  const checkboxes 
       = document.getElementsByName('bestcheck');
  
  checkboxes.forEach((checkbox) => {
    checkbox.checked = selectAll.checked;
  })
}
    </script>

</head>
<body>
    <div id='header'></div>
    <div class="wrap">
        <div class="mem_leftmenu_1" id="side">
            
        </div>  

        <div class="mem_content">
            <h1 class="bestmain_top">국내도서 종합신간</h1>
            <div class="hrwrap" ><hr> </div>
               
            <div class="newworld">
                            <div class="BigIndex_newStar_wrap">
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar1.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">책 제목</a></li>
                            <li><a class="newStar_author">저자</a></li>
                            <li><a class="newStar_pub">출판사</a></li>
                            <li><a class="newStar_Price">판매가격(할인률)</a></li>
                        </ul>
                    </div>            
                 </div>
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar2.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">마지막 몰입 : 나를 넘어서는 힘</a></li>
                            <li><a class="newStar_author">짐 퀵 저/김미정 역</a></li>
                            <li><a class="newStar_pub">비즈니스북스</a></li>
                            <li><a class="newStar_Price">15,120원(10%할인)</a></li>
                        </ul>
                    </div>            
                 </div>
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar3.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">마지막 몰입 : 나를 넘어서는 힘</a></li>
                            <li><a class="newStar_author">짐 퀵 저/김미정 역</a></li>
                            <li><a class="newStar_pub">비즈니스북스</a></li>
                            <li><a class="newStar_Price">15,120원(10%할인)</a></li>
                        </ul>
                    </div>            
                 </div>
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar4.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">마지막 몰입 : 나를 넘어서는 힘</a></li>
                            <li><a class="newStar_author">짐 퀵 저/김미정 역</a></li>
                            <li><a class="newStar_pub">비즈니스북스</a></li>
                            <li><a class="newStar_Price">15,120원(10%할인)</a></li>
                        </ul>
                    </div>            
                 </div>
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar5.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">마지막 몰입 : 나를 넘어서는 힘</a></li>
                            <li><a class="newStar_author">짐 퀵 저/김미정 역</a></li>
                            <li><a class="newStar_pub">비즈니스북스</a></li>
                            <li><a class="newStar_Price">15,120원(10%할인)</a></li>
                        </ul>
                    </div>            
                 </div>
                <div class="BigIndex_newStar_contents">
                    <img src="img/newStar6.jpg" alt="마지막 몰입", title="마지막 몰입">
                    <div class="newStar_info">
                        <ul>
                            <li><a class="newStar_title">마지막 몰입 : 나를 넘어서는 힘</a></li>
                            <li><a class="newStar_author">짐 퀵 저/김미정 역</a></li>
                            <li><a class="newStar_pub">비즈니스북스</a></li>
                            <li><a class="newStar_Price">15,120원(10%할인)</a></li>
                        </ul>
                    </div>            
                 </div>
       


            </div>
            </div>
            <div class="best_indexWrap">
                <div class="indexPlace">
                    <span class="original"><a href="#">기본순</a></span>
                    <span class="sell"><a href="#">판매량순</a></span>
                    <span class="new"><a href="#">신상품순</a></span>
                    <span class="lowPrice"><a href="#">최저가순</a></span>
                    <span class="highPrice"><a href="#">최고가순</a></span>
                    
                   
                    
                     <div class="divPlace">
                        <select name="divnum" id="divnum" >
                            <option value ="1" >5개씩 보기</option>
                            <option value ="2" selected>10개씩 보기</option>
                            <option value ="3" >15개씩 보기</option>
                        </select>
                    </div> 
                    
                    <br>
                    <br>
                    <hr>
                                       
                    <div class="best_clickNum">
                        <a href="#" class="click_first"><<</a>
                        <a href="#" class="click_prev"><</a>
                        <strong class="num">1</strong>
                        <a href="#" class="num">2</a>
                        <a href="#" class="num">3</a>
                        <a href="#" class="num">4</a>
                        <a href="#" class="num">5</a>
                        <a href="#" class="num">6</a>
                        <a href="#" class="num">7</a>
                        <a href="#" class="num">8</a>
                        <a href="#" class="num">9</a>
                        <a href="#" class="num">10</a>
                        <a href="/24/Category/Display/001001001003?PageNumber=11" class="click_next"> > </a>
                        <a href="/24/Category/Display/001001001003?PageNumber=48" class="click_end">>></a>   
                     
                       
                        <input type='checkbox' name='bestcheck'  onclick='selectAll(this)'/> 전체선택
                    </div>
              
                    

                </div>
         
            </div>
            <!-- 1 -->
            <div class="best_wrap">
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="best_rank" style="font-size: 19px;">1.</div>
                    <div class="s_bookImg"><img src = "img/book2.jpg" style="height: 250px; width: 180px; margin:-20px"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>임신 출산 육아  대백과</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">편집부 저 <span class="s_bookPub"> | 삼성출판사</span><span class="s_bookDate"> | 2020년 7월</span> </span>
                        <span class="s_price"><b>17,550</b>원 (10%할인)  &nbsp; 적립금 : 970원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        
                        <span class="s_story">
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
                            <div class="number" style="margin-left: 40px;">
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
             <hr>
             <!-- 2 -->
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="best_rank" style="font-size: 19px;">2.</div>
                    <div class="s_bookImg"><img src = "img/newStar4.jpg" style="height: 250px; width: 180px; margin:-20px"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>임신 출산 육아  대백과</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">편집부 저 <span class="s_bookPub"> | 삼성출판사</span><span class="s_bookDate"> | 2020년 7월</span> </span>
                        <span class="s_price"><b>17,550</b>원 (10%할인)  &nbsp; 적립금 : 970원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        
                        <span class="s_story">
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
                            <div class="number" style="margin-left: 50px;">
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
             <hr>
             <!-- 3 -->
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="best_rank" style="font-size: 19px;">3.</div>
                    <div class="s_bookImg"><img src = "img/newStar6.jpg" style="height: 250px; width: 180px; margin:-20px"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>임신 출산 육아  대백과</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">편집부 저 <span class="s_bookPub"> | 삼성출판사</span><span class="s_bookDate"> | 2020년 7월</span> </span>
                        <span class="s_price"><b>17,550</b>원 (10%할인)  &nbsp; 적립금 : 970원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        
                        <span class="s_story">
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
                            <div class="number" style="margin-left: 50px;">
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
             <hr>
             <!-- 4 -->
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="best_rank" style="font-size: 19px;">4.</div>
                    <div class="s_bookImg"><img src = "img/book.jpg" style="height: 250px; width: 180px; margin:-20px"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>임신 출산 육아  대백과</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">편집부 저 <span class="s_bookPub"> | 삼성출판사</span><span class="s_bookDate"> | 2020년 7월</span> </span>
                        <span class="s_price"><b>17,550</b>원 (10%할인)  &nbsp; 적립금 : 970원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        
                        <span class="s_story">
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
             <hr>
             <!-- 5 -->
            <div class="SmallIndex_book">
                <div class="s_imgSection">
                    <div class="best_rank" style="font-size: 19px;">5.</div>
                    <div class="s_bookImg"><img src = "img/newStar4.jpg" style="height: 250px; width: 180px; margin:-20px"></div>
                </div>
                <div class="s_infoSectionWrap">
                    <div class="s_infoSection">
                        <span class="s_bookTitle" style="font-size: 20px;">
                            <b>임신 출산 육아  대백과</b>
                        </span>
                        <span class="s_bookAuthor" style="font-size: 17px;">편집부 저 <span class="s_bookPub"> | 삼성출판사</span><span class="s_bookDate"> | 2020년 7월</span> </span>
                        <span class="s_price"><b>17,550</b>원 (10%할인)  &nbsp; 적립금 : 970원</span>
                        <span class="s_grade">회원리뷰(8건) ★★★★★ 9.3</span>
                        
                        <span class="s_story">
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
           
         


          
        
            </div> 
        </div>  
    
        <aside class="mypage_ad">
            <div class="mypage_ad_name"><p>최근본상품</p></div>
            <div class="img_area">
                <img src="img/newEye1.jpg" width="70px" height="100px">
            </div>
            <div style="text-align: center;">
                책이름
            </div>
        </aside> 
    </div>
    <div id="footer"></div>

</body>
</html>