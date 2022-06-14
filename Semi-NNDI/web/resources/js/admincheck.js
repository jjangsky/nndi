
$(function(){

    $("#uName").change(function(){
        
        var regExp = /^[가-힣]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("이름을 한글로 두 자 이상 입력하세요")
            $(this).val('');
        }
    })
    
    
  $(".mam").change(function(){
        
        var regExp = /^[0-9a-zA-Z]{2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("이메일 형식으로 입력해주세요")
            $(this).val('');
        }
    })
    
  $("#clsruntime").change(function(){
        
        var regExp = /^([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])*~([1-9]|[01][0-9]|2[0-3]):([0-5][0-9])$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("시간을 ex) 12:00~16:00 형식으로 입력해주세요")
            $(this).val('');
        }
    })

  $(".peanut").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("강좌설명은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })

  $("#burgerking").change(function(){
        
       var regExp = /^\s*(?:\S\s*){2,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("강의명은 2자 이상 입력해 주세요")
            $(this).val('');
        }
    })
    
    
  $(".noticecontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("공지사항은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    }) 
  $(".qnacontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("문의 답변은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    }) 
    
  $(".complaincontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("민원 답변은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    }) 
    
  $(".faqcontent").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("자주묻는 질문내용은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })   
    
      $(".faqadder").change(function(){
        
       var regExp = /^\s*(?:\S\s*){10,}$/;

        if(regExp.test($(this).val())){     
        } else {
        	alert("자주묻는 질문내용은 10자 이상 입력해 주세요")
            $(this).val('');
        }
    })
    
})
