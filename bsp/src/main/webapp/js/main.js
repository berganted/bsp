$(function(){ 


    $('.radio_pwd').click(function(){
        $('.find_id').css('display','none') ;  
        $('.find_pwd').css('display','block')   ;
        
    })
    $('.radio_id').click(function(){
        $('.find_pwd').css('display','none') ;  
        $('.find_id').css('display','block')   ;
        
    });
      
    console.log($('.mem_content').position().left)
    var q_left = $('.mem_content').position().left+1335;
    var q_top = $('.mem_content').position().top;
   
    $(".mypage_ad").css({
        'top':q_top,
        'left':q_left
    });
    
    $(window).scroll(function(){
        
        var new_top = $(window).scrollTop()+100;
        $(".mypage_ad").stop().animate({
        'top':new_top, 'left':q_left
        
    },300);
    })

    $('.del_why ').change(function(){
    	 if($(this).val() == '1' ){
    	 	$('.hidden').text($('#1').text());
    	 }
    	 if($(this).val() == '2' ){
    	 	$('.hidden').text($('#2').text());
    	 }
    	 if($(this).val() == '3' ){
    	 	$('.hidden').text($('#3').text());
    	 }
    	 if($(this).val() == '4' ){
    	 	$('.hidden').text($('#4').text());
    	 }
    	 if($(this).val() == '5' ){
    	 	$('.hidden').text("");
    	 }
    	
        if($(this).val() == '5' ){
            $('.hidden').show();  
        } else{
            $('.hidden').hide();  
        }           
    })
    $('.up_spancon_t > select').change(function(){
        var msg = $(this).val();
        $('#emailv').val(msg);
        if(msg ==""){
            $('#emailv').show();
        }else{
            $('#emailv').hide();
        }
     })
      $('.up_spancon_t > select').change(function(){
        var msg2 = $(this).val();
        $('#emailv2').val(msg2);
        if(msg2 ==""){
            $('#emailv2').show();
        }else{
            $('#emailv2').hide();
        }
     })
     
  });

  
  function ShowCurrentTime() {
    $.ajax({
        async: false,
        type: "POST",
        url: "Default.aspx/GetCurrentTime",
        data: '{name: "Mudassar" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            alert(response.d);
        }
    });
    

   
}
   
