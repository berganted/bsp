
//BigIdx 스와이프
    $(function(){
        var swiper = new Swiper(".swiper-container", {
            loop : true,
            autoplay : {delay:3500},
            navigation : {
                nextEl : ".swiper-button-next",
                prevEl : ".swiper-button-prev",
            },
        });
    });



        // 수량버튼증감
        // $(function() {
        //     $('.s_payWrap>.s_pay>.s_pay1>.number>#decreaseQuantity').click(function() {
        //       console.log(99)
        //       $(this).parents().find('#numberUpDown').val();
        //       console.log($(this).parents().find('#numberUpDown').val());
        //       var stat = $(this).parents().find('#numberUpDown').val();
        //       var num = parseInt(stat, 10);
        //       stat--;
        //       if (num <= 0) {
        //         alert('더이상 줄일수 없습니다.');
        //         num = 1;
        //       }
        //       $('#numberUpDown').val(num);
        //     });
        //     $('.number>#increaseQuantity').click(function(e) {
        //       $(this).parents().find('#numberUpDown').val();
        //       var stat = $(this).parents().find('#numberUpDown').val();
        //       var num = parseInt(stat, 10);
        //       stat++;
          
        //       if (num > 100) {
        //         alert('더이상 늘릴수 없습니다.');
        //         num = 100;
        //       }
        //       $('#numberUpDown').text(num);
        //     });
        //   });

            
          // 전체선택해제     
          function selectAll(selectAll)  {
            const checkboxes 
                 = document.getElementsByName('bestcheck');
            
            checkboxes.forEach((checkbox) => {
              checkbox.checked = selectAll.checked;
            })
          }

 $(function(){
   $('.number>#decreaseQuantity').click(function () {
     var stat = $(this).siblings('#numberUpDown').val();
     var num = parseInt (stat-1);
    
     if (num <= 0) {
       alert('더이상 줄일수 없습니다.');
       num = 1;
      }
      $(this).siblings('#numberUpDown').val(num);
     
   });

   $('.number>#increaseQuantity').click(function () {
    var stat = $(this).siblings('#numberUpDown').val();
    var num = parseInt(stat);
    num++;
   
    if (num > 100) {
        alert('더이상 늘릴수 없습니다.');
        num = 100;
     }
     $(this).siblings('#numberUpDown').val(num);
    
  })
 })
 
 
 
 
     $(function(){
    	$(".abc").each(function(){
    		var idx = $(this).index('.abc');
    		console.log($(this).val().length)
    		if($(this).val().length>30){
    			$('.blah').eq(idx).attr('src',$(this).val())
    		}
    		})
    })
 
 /* 사진 + 카트담기, 바로구매 */
 
    $(function(){
    	$(".abc").each(function(){
    		var idx = $(this).index('.abc');
    		console.log($(this).val().length)
    		if($(this).val().length>30){
    			$('.blah').eq(idx).attr('src',$(this).val())
    		}
    	})
    	$('.btn2').click(function(){
			$('#frm').attr('action','/bsp/order/buy.do')
			console.log($(this).parent().parent().find("#numberUpDown").val())

			if($('#m_no').val()==0){
	  		  alert('로그인이 필요합니다.')
	  		 location.href="/bsp/user/login.do?url=<%=request.getAttribute("javax.servlet.forward.request_uri")%>?<%=request.getQueryString()==null?"":request.getQueryString()%>"
	  		  return false
			}
			$(this).next().attr("name","b_no");
			$(this).parent().parent().find("#numberUpDown").attr("name","io_amount");
			$('#frm').submit();
		})
		$('.btn1').click(function(){
			$('#frm').attr('action','/bsp/cart/insert.do')
			if($('#m_no').val()==0){
	  		  alert('로그인이 필요합니다.')
	  		 location.href="/bsp/user/login.do?url=<%=request.getAttribute("javax.servlet.forward.request_uri")%>?<%=request.getQueryString()==null?"":request.getQueryString()%>"
	  		  return false
			}
			$(this).next().attr("name","b_no");
			console.log($(this).next().val())
			$(this).next().next().attr("name","b_price");
			$(this).next().next().next().attr("name","m_no");
			$(this).parent().parent().find("#numberUpDown").attr("name","io_amount");
			console.log($(this).parent().parent().find("#numberUpDown").val())
			$('#frm').submit();
		})
    })
