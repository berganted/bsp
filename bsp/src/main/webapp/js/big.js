
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
 
 
 /*장바구니,바로구매*/
     function gosave() {
  	  $('#frm').attr('action','/bsp/cart/insert.do')
  	  if($('#m_no').val()==0){
  		  alert('로그인하세요')
  		  return false
  	  }
  	  $('#frm').submit();
  	  }
    
       
    $(function() {
		$('.btn2').click(function(){
			$('#frm').attr('action','/bsp/order/buy.do')
			console.log($(this).parent().parent().find("#numberUpDown").val())

			if($('#m_no').val()==0){
	  		  alert('로그인이 필요합니다.')
	  		  location.href="/bsp/user/login.do"
	  		  return false
			}
			$(this).next().attr("name","b_no");
			$(this).parent().parent().find("#numberUpDown").attr("name","io_amount");
			$('#frm').submit();
		})
	})