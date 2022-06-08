var IMP = window.IMP; // 생략 가능
IMP.init("{가맹점 식별코드}"); // 예: imp00000000


 // IMP.certification(param, callback) 호출
  IMP.certification({ // param
    merchant_uid: "ORD20180131-0000011", // 주문 번호
    m_redirect_url : "{리디렉션 될 URL}", // 모바일환경에서 popup:false(기본값) 인 경우 필수, 예: https://www.myservice.com/payments/complete/mobile
    popup : false // PC환경에서는 popup 파라메터가 무시되고 항상 true 로 적용됨
  }, function (rsp) { // callback
    if (rsp.success) {
      // 인증 성공 시 로직,
    } else {
      // 인증 실패 시 로직,
    }
  });
  
  
    IMP.certification({
    /* ...중략... */
  }, function (rsp) { // callback
    if (rsp.success) { // 인증 성공 시
      // jQuery로 HTTP 요청
      jQuery.ajax({
        url: "{서버의 인증 정보를 받는 endpoint}", // 예: https://www.myservice.com/certifications
        method: "POST",
        headers: { "Content-Type": "application/json" },
        data: { imp_uid: rsp.imp_uid }
      });
    } else {
      alert("인증에 실패하였습니다. 에러 내용: " +  rsp.error_msg);
    }
  });
  
  