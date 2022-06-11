INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '1234', '5678'
, 'knsol1992', '@naver.com', '03289', '서울시 중랑구 묵2동', '은미아파트 102동'
, 'TESTID01', 'TESTPWD01'
, TO_DATE(20220101,'RRRRMMDD'), '나큰솔', 'M'
);

INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '4567', '5797'
, 'knsol1993', '@naver.com', '02111', '중랑구 묵1동', '은호아파트 102동 102호'
, 'TESTID02', 'TESTPWD02'
, TO_DATE(20220102, 'RRRRMMDD'), '김효진', 'W'
);

INSERT 
  INTO TBL_MEMBER_DEAD 
VALUES 
(
  SEQ_MEMBER_DEAD_NO.NEXTVAL, '010', '5123', '5689'
, 'knsol1994', '@naver.com', '120-113', '중랑구 중랑1동', '은평아파트 104동 202호'
, 'TESTID03', 'TESTPWD03'
, TO_DATE(20220103,'RRRRMMDD'), '김혜준', 'W'
);

-- 아이디 찾기 질문 INSERT
INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  1, '출신 고등학교'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  2, '가장 친한 친구 이름'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  3, '가장 존경하는 인물'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  4, '별명'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  5, '고향'
);

INSERT 
  INTO TBL_MEMBER_QUESTION
VALUES
(
  6, '좋아하는 색'
);

-- 활동 회원 INSERT
INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID01', 1, '010', '1111', '1119', 'knsol1994', '@naver.com'
, '220-112', '중랑구 은평3동', '은미아파트', 'TESTPWD01'
, '김유찬', TO_DATE(20220109,'RRRRMMDD'), '휘문고등학교', 'M'
, SYSDATE, 'A', NULL, SYSDATE
);

INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID02', 2, '010', '1111', '1118', 'knsol1995', '@naver.com'
, '120-113', '중랑구 묵3동', '은호아파트', 'TESTPWD02'
, '김동로', TO_DATE(20220108,'RRRRMMDD'), '최지수', 'M'
, SYSDATE, 'A', NULL, SYSDATE
);

INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID03', 3, '010', '1111', '1117', 'knsol1996', '@naver.com'
, '120-116', '서울시 은랑4동', '은평아파트', 'TESTPWD03'
, '서석진', TO_DATE(20220107,'RRRRMMDD'), '김용승', 'M'
, TO_DATE(20220306, 'RRRRMMDD'), 'R', NULL, SYSDATE
);

INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID04', 4, '010', '1111', '1116', 'knsol1997', '@naver.com'
, '120-117', '서울시 고척동', '한미아파트 102동', 'TESTPWD04'
, '나큰수', TO_DATE(20220108,'RRRRMMDD'), '나큰솔', 'M'
, TO_DATE(20220101, 'RRRRMMDD'), 'O', TO_DATE(20211201, 'RRRRMMDD'), TO_DATE(20191201, 'RRRRMMDD')
);

INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID05', 5, '010', '1111', '1115', 'knsol1998', '@naver.com'
, '120-118', '서울시 고척3동', '삼성아파트', 'TESTPWD05'
, '김오오', TO_DATE(20220101,'RRRRMMDD'), '서울', 'M'
, SYSDATE, 'A', NULL, SYSDATE
);

INSERT 
  INTO TBL_MEMBER_ALIVE
VALUES  
(
  'TESTID06', 6, '010', '1111', '1120', 'knsol1920', '@naver.com'
, '120-119', '서울시 호척동', '102동 2022호', 'TESTPWD06'
, '김오오', TO_DATE(20220301,'RRRRMMDD'), '파란색', 'M'
, TO_DATE(20220404, 'RRRRMMDD'), 'R', NULL, SYSDATE
);

-- MANAGER INSERT
INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'MANAGER01', '$2a$10$ufaGwnxcxuVCUo10n8Si1.Ivdz.5qfib5Ogh/su6HIEUUoSjKH51W', '매니저'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'MANAGER02', '$2a$10$YH6bWCz7jRoctjErTLD96.QK1nGRCTrZB7QVuOtOTbHJ1.6aSn7.W', '매니저2'  
);

INSERT 
  INTO TBL_MANAGER
VALUES  
(
  'MANAGER03', '$2a$10$O3xFBMwoB4Vz/cD4OvR2wuwwIhkKFgNSxaJsIJ1x3Yn0pcuvNvQ7W', '매니저3'  
);

INSERT
  INTO TBL_MANAGER
VALUES
(
  'MANAGER04', '$2a$10$JMbL3ciS94ipl9g6MhGPR.lxsTSco/6WW3c/nkWaEdH3x0dCcZpoe', '매니저4'
);

INSERT
  INTO TBL_MANAGER
VALUES  
(
  'MANAGER05', '$2a$10$d8WIWqDKdNJq.F9U7bd7eO9eHWmLWEfykuJc5uI/guVB447uO7ws.', '매니저5'
);

-- 시설 종류 INSERT
INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '수영장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '탁구장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '배드민턴장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '클라이밍'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '강의실'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '농구장'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '소회의실'
);

INSERT 
  INTO TBL_CENTER_KINDS
VALUES
(
  '대강당'
);

-- 시설 관리 INSERT
INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '201'
, '수영장'
, 'N'
, 40
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '301'
, '탁구장'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '302'
, '배드민턴장'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '303'
, '클라이밍'
, 'N'
, 10
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '304'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '305'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '306'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '307'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '308'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '309'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '310'
, '강의실'
, 'N'
, 15
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '401'
, '농구장'
, 'N'
, 30
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '402'
, '대강당'
, 'N'
, 50
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '403'
, '소회의실'
, 'N'
, 20
);

INSERT 
  INTO TBL_CENTER_MANAGEMENT
VALUES
(
  '404'
, '소회의실'
, 'N'
, 20
);

-- 강사 INSERT
INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '보라돌이', 'M', '1990/02/11'
, 'bora@naver.com', '010-1248-4158', '서울시 도봉구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '뚜비','M', '1991/02/11'
, 'bora1@naver.com', '010-1248-4128', '서울시 동작구', 'Y'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '나나','W', '1990/02/21'
, 'bora52@naver.com', '010-1348-4158', '서울시 동대문구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '뽀오오','W', '1990/02/11'
, 'bora5321@naver.com', '010-8658-4158', '서울시 도봉구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '왕햇님','W', '1990/02/11'
, 'sun@naver.com', '010-1248-4222', '서울시 송파구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '김레드','W', '1960/02/11'
, 'red@naver.com', '010-8564-4158', '서울시 성동구', 'Y'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '이블루','M', '1950/05/11'
, 'blue@naver.com', '010-4168-4158', '서울시 구로구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '박핑크','W', '1990/12/11'
, 'pink@naver.com', '010-6462-4558', '서울시 관악구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '최옐로우','W', '1910/02/11'
, 'yellow@naver.com', '010-1523-1623', '서울시 강남구', 'N'
);

INSERT 
  INTO TBL_TEACHER
VALUES
( 
  SEQ_TCR_NO.NEXTVAL, '장블랙','M', '1986/03/11'
, 'black@naver.com', '010-6486-5158', '서울시 도봉구', 'N'
);

-- 강사 이력 INSERT
INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '1', '한남대학교 영어영문학과, 장로회신학대학교 신학대학원 졸업,  한남대학교 일반대학 철학과, 다수의 언론사 칼럼니스트'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '2', '한양대학교 불어영과, 서울대학교 신학대학원 졸업,  법무부 소년원 수퍼바이저, 사회복지법인 천성원 운영위원'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '3', '연세대학교 철학과 졸업,  행복강연센터 대표, 법무부 인성교육 전문강사'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '4', '중앙대학교 국악대학 창작음악학과 졸업,  트루코칭 대표강사, 강사야 파트너 강사, 스타벅스 코리아 근무'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '5', '한양대학교 경영전문대학원 조직인사 전공, 중앙대학교 법과대학 법학과 졸업, 노무법인 마로 대표 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '6', '한국 체육 대학교 졸업, 전 농구 국가대표, 생활 체육지도사 2급 자격증 보유 '
);  

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '7', '한양대 체육학과  졸업, 전 탁구 국가대표, 생활 체육지도사 2급 자격증 보유, 보디빌딩 자격증 보유 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '8', '서울대 등산학과  졸업, 한국 등산 협회 대표, 등산 전문 자격증 1급 보유, 히말라야 등산 기록 20회 '
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '9', '한국 체육 대학교 졸업, 스포츠 수영 지도사 2급 보유, 한국 수영 협회 부대표'
);

INSERT
  INTO TBL_TEACHER_RESUME
VALUES
(
  '10', '한국 체육대학교 테니스 학과 졸업, 미국 국제 개인 복식 우승, 전국 종별 개인 복식 3위, 전국 체전 단체 3위 기록 보유'
);

-- 문의 카테고리
INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '1'
, '문화 강좌'
);

INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '2'
, '체육 강좌'
);

INSERT
  INTO TBL_POST_CATEGORY
(
  CATE_NUM
, CATE_KIND
)
VALUES
(
  '3'
, '시설'
);

INSERT
  INTO TBL_POST_CATEGORY
VALUES
(
  '4'
, '직원'
);

INSERT
  INTO TBL_POST_CATEGORY

VALUES
(
  '5'
, '기타'
);


-- 공지사항 INSERT
INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER01', 1, SYSDATE
, '2022년 수영장 수질 시험 성적서', '너나들이 중랑은 은 쾌적한 시설환경 제공을 위해 최선을 다하겠습니다. 하기 내용은 시험,검사 성적서 입니다.'
  ,0,1
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER02', 5, SYSDATE
, '소식지 공감터 제31호(봄호) 발간 안내', '2022년 4월 29일 금요일 공단 소식지 공감터가 발간되었습니다. 많은 관심과 사랑 부탁드립니다.'
, 0,2
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER02', 5, SYSDATE
, '2022년 고객모니터링단 모집 알림', '너나들이 중랑의 더 나은 서비스 제공을 위하여 ?2022년 고객모니터링단?을 모집합니다. 자세한 내용은 하기 포스터를 참고바랍니다.'
, 0,3
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER03', 5, SYSDATE
, '홈페이지 서비스 중단 안내', '너나들이 중랑의 더 나은 서비스 제공을 위하여 5.28(토) 19:00~ 21:00 홈페이지 및 회원가입 서비스가 중단될 예정이오니 회원분들의 양해 
  부탁드립니다. 작업에 따라 시간은 변동될 수 있습니다. 참고 바랍니다. 감사합니다'
, 0,4
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER03', 5, SYSDATE
, '스승의날 선물 및 금품수수 금지안내', '너나들이 중랑의 강좌를 이용해 주시는 고객 여러분께 진심으로 감사드립니다. 너나들이중랑시설은 부정청탁 금지법을 저용받는 시설로 스승의날을 맞이하여 지도강사 및 직원에 대한
  선물 또는 금품수수를 금지하고 있습니다. 회원님들의 넓은 이해와 적극적인 협조 당부 드립니다.'
  ,0,5
);

INSERT 
  INTO TBL_POST_NOTICE
VALUES
(
  SEQ_NOTICE_POST_NUM.NEXTVAL , 'MANAGER03', 5, SYSDATE
, '전국동시지방선거 휴무일 안내', '2022년 6월 1일은 전국동시지방선거일은 휴무입니다. 참고 바랍니다. 감사합니다'
, 0,6
);

-- FAQ INSERT
INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER01'
, 3
, '대관 이용시 주의사항이 있나요?'
, '-담배를 피우지 못합니다. <br>
 - 사용기간 중 시설물 및 기물이 오손 또는 파손될 때에는 허가 받은 자가 복구하여야 합니다. <br>
 - 허가 받은 자는 경기 시 불상사가 발생치 않도록 최선을 다하여야 하며 아울러 불상사 발생시 허 가 받은 자가 책임을 져야 합니다. <br>
 - 현판 등의 선전물은 행사 종료 즉시 철거하여야 합니다. <br>
 - 모든 시설은 취사 금지되어 있으며, 음식물 반입 및 취사가 금지됩니다. <br>
 - 대관 행사 후 시설물(현수막, 포스터)은 반드시 철거해야 하며, 종량제 쓰레기봉투를 미리 준비하셔서 마무리를 하셔야 합니다.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER02'
, 3
, ' 대관 신청 절차가 궁금해요.'
, '대관은 수시허가로 접수를 받고 있습니다. 절차는 다음과 같습니다. <br>
 대관신청 문의·상담 → 신청서제출 → 처리 → 대관료 입금 → 행사 → 시설물철거.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER03'
, 3
, ' 운영시간은 어떻게 되나요?.'
, '우리센터의 운영시간은 아래와 같습니다. <br>
- 평일(월~금) 06:00 ~ 22:00 <br>
- 토요일 09:00 ~ 18:00 <br>
- 둘째,넷째 일요일 수영장 10:00 ~ 17:00 '
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER02'
, 4
, ' 강좌환불은 어떻게 해야 하나요?.'
, '강좌 환불은 <br>
-개강전까지 100% 환불 가능 <br>
- 개강후 일주일까지는 50 % <br>
- 그 이후에는 불가능 합니다. <br>
유선으로 신청 혹은 홈페이지 > 마이페이지 > 강좌관리 > 수강환불 신청 에서 가능합니다.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER01'
, 4
, '강좌 등록기간은 언제인가요?'
, '기존회원 접수기간은 2, 5, 8, 11월 첫 번째 주이며, <br>
신규회원 접수는 2, 5, 8, 11월 두 번째 주부터 말일까지입니다. <br>
방문접수와 인터넷접수 2가지 방법으로 등록하실 수 있으며, <br>
방문접수 09:00 ~ 21:00, 인터넷접수 09:00 ~ 24:00까지입니다.<br>
방문접수, 인터넷접수 모두 선착순 접수이며, 방문접수의 경우 06:00부터 대기번호표을 배부합니다.<br>
접수기간은 사정에 따라 다소 변경될 수도 있습니다.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER02'
, 4
, '강좌 개강 후에도 접수가 가능한지요?'
, '대기자로 등록되어 있거나 정원이 마감되지 않았을 경우 개강 후 접수가 가능합니다.<br>
지나간 수업일수에 대해서는 수업보강, 수강료 감액등이 없기 때문에 접수시 본인이 감안하셔야 합니다.'
, 0
);

INSERT 
  INTO TBL_POST_FAQ
VALUES
( 
  SEQ_FAQ_POST_NUM.NEXTVAL
, 'MANAGER03'
, 3
, '타구 소재 시민도 이용 제한이 없나요'
, '중랑구민 뿐만 아니라 타구 시민 및 외국인까지도 제한 없이 이용이 가능합니다.'
, 0
);

-- 강좌 INSERT

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 초급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영  초급반 강좌입니다', 3, 30000, '월', 'Y','체육', '전체' , '14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 중급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영 중급반 강좌입니다', 3, 40000, '토', 'Y','체육', '전체'  , '10:00~11:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 201, '수영 고급반', 10, 40, TO_DATE(20220605, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '수영  고급반 강좌입니다', 3, 50000, '일', 'Y','체육', '전체', '16:00~17:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 초급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 초급반 강좌입니다', 2, 30000, '월수금', 'Y','체육', '전체' ,'11:00~12:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 중급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 중급반 강좌입니다', 2, 40000, '화목토', 'Y','체육', '전체','09:00~10:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 301, '탁구 고급반', 10, 20, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '탁구 고급반 강좌입니다', 2, 50000, '일', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 초급반', 10, 40, TO_DATE(20220620, 'YYYYMMDD'), TO_DATE(20221005, 'YYYYMMDD')
, '농구  초급반 강좌입니다', 2, 50000, '화', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 중급반', 15, 40, TO_DATE(20220720, 'YYYYMMDD'), TO_DATE(20221105, 'YYYYMMDD')
, '농구  중급반 강좌입니다', 2, 60000, '수', 'Y','체육', '전체' ,'14:00~15:00'  
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 401, '농구 고급반', 18, 20, TO_DATE(20220820, 'YYYYMMDD'), TO_DATE(20221205, 'YYYYMMDD')
, '농구  고급반 강좌입니다', 2, 60000, '일', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 초급반', 11, 30, TO_DATE(20220620, 'YYYYMMDD'), TO_DATE(20220805, 'YYYYMMDD')
, '배드민턴 초급반 강좌입니다', 3, 50000, '수', 'Y','체육', '전체','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 중급반', 8, 30, TO_DATE(20220625, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '배드민턴 중급반 강좌입니다', 3, 50000, '금', 'Y','체육', '전체'  ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 10, 302, '배드민턴 고급반', 5, 30, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220925, 'YYYYMMDD')
, '배드민턴 고급반 강좌입니다', 3, 50000, '일', 'Y','체육', '전체'   ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 초급반', 3, 10, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220625, 'YYYYMMDD')
, '클라이밍 초급반 강좌입니다.', 1, 100000, '수', 'Y','체육', '전체' ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 중급반', 7, 10, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220725, 'YYYYMMDD')
, '클라이밍 중급반 강좌입니다.', 1, 100000, '화','Y','체육','성인'  ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 303, '클라이밍 고급반', 3, 10, TO_DATE(20220815, 'YYYYMMDD'), TO_DATE(20220825, 'YYYYMMDD')
, '클라이밍 고급반 강좌입니다.', 1, 100000, '토', 'Y','체육', '전체'  ,'14:00~15:00' 
);


INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 304, '모종심기', 10, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '아동들을 위한 모종 심기 참여 교육 입니다.', 2, 20000, '월', 'Y','문화', '아동','14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 7, 402, '인라인 스케이트', 5, 10, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220725, 'YYYYMMDD')
, '아동들을 위한 신나는 인라인 스케이트 강좌입니다.', 2, 30000, '화', 'Y','문화', '아동','14:00~15:00'  
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 304, '비누 만들기', 5, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '아동들을 위한 재미있는 비누 만들기 강좌입니다.', 2, 30000, '월', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 304, '창의 미술', 3, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '아이들의 창의력을 키워주는 창의 미술 강좌입니다.', 2, 30000, '화', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 307, '도자기 공예(초급)', 13, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 초급반 입니다.', 2, 80000, '수', 'Y','문화', '아동','14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 307, '도자기 공예(중급)', 8, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220815, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 중급반 입니다.', 2, 80000, '수', 'Y','문화', '아동','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 308, '도자기 공예(초급)', 1, 20, TO_DATE(20220610, 'YYYYMMDD'), TO_DATE(20220810, 'YYYYMMDD')
, '아이들에게 추억을 선물하는 재미있는 보드게임 강좌입니다.', 2, 30000, '금', 'Y','문화', '아동','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '촉감놀이(슬라임 만들기)', 18, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220710, 'YYYYMMDD')
, '촉감놀이를 할 수 있는 슬라임 만들기 강좌입니다.', 2, 10000, '금', 'Y','문화', '아동' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 6, 305, '논술 교육', 3, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '청소년들을 위한 논술 교육 입니다.', 2, 30000, '월', 'Y','문화', '청소년','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 310, '공부 멘토링', 18, 20, TO_DATE(20220610, 'YYYYMMDD'), TO_DATE(20221210, 'YYYYMMDD')
, '주변 대학과의 연계를 통해 공부 방법을 배울 수 있는 강좌입니다.', 2, 5000, '월', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 305, '자기소개서 글짓기', 15, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220810, 'YYYYMMDD')
, '자기소개서를 함께 작성하며 첨삭을 도와주는 강좌입니다.', 3, 30000, '수', 'Y','문화', '청소년' ,'14:00~15:00'        
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 310, '도자기 공예(청소년)', 18, 20, TO_DATE(20220810, 'YYYYMMDD'), TO_DATE(20220910, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 도자기 공예 강좌입니다.', 3, 80000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 308, '창의 미술(청소년)', 8, 20, TO_DATE(20220710, 'YYYYMMDD'), TO_DATE(20220910, 'YYYYMMDD')
, '청소년의 창의력을 키워줄 수 있는 창의 미술 강좌입니다.', 3, 50000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '보드 게임(청소년)', 3, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '아이들에게 즐거운 추억을 선물할 수 있는 보드게임 강좌입니다.', 2, 30000, '목', 'Y','문화', '청소년','14:00~15:00'       
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '피아노', 13, 20, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20221105, 'YYYYMMDD')
, '피아노를 배울 수 있는 강좌입니다.', 3, 80000, '월', 'Y','문화', '청소년'  ,'14:00~15:00'     
);


INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 7, 306, '재태크', 8, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '성인들을 위한 재태크 교육 입니다.', 2, 50000, '월', 'Y','문화', '성인'  ,'14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '수채화 그림 그리기', 7, 30, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220901, 'YYYYMMDD')
, '수채화 그림을 그릴 수 있는 강좌입니다.', 2, 50000, '수', 'Y','문화', '성인'  ,'14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '인형 만들기', 13, 20, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220905, 'YYYYMMDD')
, '나만의 인형을 만들어 볼 수 있는 강좌입니다.', 2, 30000, '일', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 306, '취업 자기소개서 글짓기', 19, 20, TO_DATE(20220715, 'YYYYMMDD'), TO_DATE(20220715, 'YYYYMMDD')
, '취업률 보장하는 무적권 합격시켜주는 야무진 자기소개서 작성법 특별히 알려주는 강좌', 2, 10000, '월', 'Y','문화', '성인' ,'14:00~15:00' 
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 307, '스피치', 3, 30, TO_DATE(20220617, 'YYYYMMDD'), TO_DATE(20220628, 'YYYYMMDD')
, '남들앞에서 당당하게 말할 수 있는 비법을 알려주는 스피치 강좌', 3, 30000, '화', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 5, 306, '플로이스트', 13, 30, TO_DATE(20220701, 'YYYYMMDD'), TO_DATE(20220728, 'YYYYMMDD')
, '아름다운 꽃을 만들어 사랑하는 사람에게 선물하세요. 최고의 플로이스트가 강의하는 강좌입니다.', 2, 30000, '수', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 309, '가죽공예', 17, 30, TO_DATE(20220615, 'YYYYMMDD'), TO_DATE(20220728, 'YYYYMMDD')
, '수준높은 가죽공예 강좌입니다.', 2, 150000, '목', 'Y','문화', '성인' ,'14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 3, 310, '도자기 공예', 13, 15, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220828, 'YYYYMMDD')
, '나만의 이쁜 도자기를 만들 수 있는 강좌입니다.', 3, 80000, '금', 'Y','문화', '성인' ,'14:00~15:00'   
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 306, '문예창작', 15, 20, TO_DATE(20220627, 'YYYYMMDD'), TO_DATE(20221018, 'YYYYMMDD')
, '문예창작 강좌입니다.', 2, 50000, '화', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 8, 307, '바둑', 9, 15, TO_DATE(20220609, 'YYYYMMDD'), TO_DATE(20220909, 'YYYYMMDD')
, '시니어를 위한 바둑 교육 입니다.', 2, 20000, '금', 'Y','문화', '성인','14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '스마트폰 사용법 ', 28, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 스마트폰 사용법과 인터넷 뱅킹을 알려드리는 안성맞춤 강좌', 1, 5000, '수', 'Y','문화', '성인','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '키오스크 사용법 ', 25, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 키오스크 사용법을 알려드리는 강좌', 1, 5000, '목', 'Y','문화', '시니어' ,'14:00~15:00'    
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 307, '보이스 피싱 예방 ', 28, 30, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220701, 'YYYYMMDD')
, '어르신들에게 보이스 피싱을 예방하는 법을 알려주는 강좌', 1, 5000, '금',  'Y','문화', '시니어','14:00~15:00'         
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 1, 308, '노래교실 ', 8, 10, TO_DATE(20220718, 'YYYYMMDD'), TO_DATE(20221201, 'YYYYMMDD')
, '어르신들에게 노래를 알려주는 강좌', 3, 5000, '수',  'Y','문화', '시니어' ,'14:00~15:00'      
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 4, 308, '인형극 ', 3, 10, TO_DATE(20220718, 'YYYYMMDD'), TO_DATE(20220918, 'YYYYMMDD')
, '어르신들이 인형극을 직접 해볼수 있도록 도와주는 강좌', 3, 3000, '월', 'Y','문화', '시니어','14:00~15:00'     
);

INSERT 
  INTO TBL_CLASS
VALUES 
(
  SEQ_CLASS_CLS_NUM.NEXTVAL, 2, 306, '칠교 ', 3, 10, TO_DATE(20220618, 'YYYYMMDD'), TO_DATE(20220918, 'YYYYMMDD')
, '어르신들의 치매 예방을 도와주는 칠교 놀이 강좌', 3, 3000, '금',  'Y','문화', '시니어' ,'14:00~15:00'      
);

-- 강사 모집

INSERT
  INTO TBL_TEACHER_EMPLOYMENT
VALUES
(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'MANAGER01', 1
 , '수영교실 시간강사 신규채용 모집공고'
 , SYSDATE
 , DEFAULT
 , '가. 공고일 기준 만 20세 이상
    나. 성범죄 및 아동학대범죄(아동·청소년 및 성보호에 관한 법률) 위반 사실이 없는 자
    다. 연령, 지역, 성별 : 제한 없음
    라. 자격 요건 : 인명구조원자격 필수(수상구조사, 대한적십자사, 경영자협회 등)'
 , 1
 , '너나들이 중랑에서 근무하실 시간강사를 다음과 같이 모집합니다.
    1. 채용 분야 및 선발 예정 인원
    가. 채용분야 : 수영교실 시간강사 (15시간미만 기간제 근로자)
    나. 채용인원 : 2명
    다. 근무장소 : 너나들이 중랑 수영장
    라. 직무내용 : 안전근무 및 안전관리업무
    마. 입사예정일 : 2022. 6. 13.(월) 근무시작일
    2. 근로 조건 및 임금
    가. 근무배치 : 아래 표 참조하여 붙임 강사지원서 이름 옆 희망 근무시간 번호 기재바랍니다.'
 ,'4. 모집일정
    가. 1차 서류 전형) : 2022. 5. 23.(월) ~ 2022. 5. 31(화) *접수기간
    ※ 접수 이메일 주소 : manager01@eonadeul.com
     혹은 방문접수 하시면 됩니다.
    첨부파일 강사지원서(양식)에 작성 바랍니다.
     나. 2차 면접 : 2022. 6. 7.(화) ~ 6.10(금)
    다. 합격자 발표 : 개별 통지
    5. 기타(유의)사항
    가. 응시 희망자는 자격요건 등을 정확히 확인하고 응시하시기 바랍니다.
    나. 해당분야에 적격자가 없을 경우 채용하지 않을 수 있으며, 합격자 통지 후라도 ‘성범죄및아동학대범죄전력조회’ 등을 통하여
    결격사유가 발견될 경우 합격이 취소될 수 있습니다.
    다. 증빙서류에 허위사실을 기재함으로써 시험결과에 부당한 영향을주는 행위를 한 사람은 그 시험을 정지 또는 무효로 하거나
    합격 결정을 취소할 수 있습니다.
    라. 응시원서 작성 내용의 착오 또는 누락, 연락불능으로 인하여 발생하는 불이익은 응시자 본인의 책임입니다.
    마. 응시자 제출서류는 채용여부가 확정된 이후 응시자(확정된 채용대상자는 제외)가 반환을 청구하는 경우 본인임을 확인한 후
    「채용절차의 공정화에 관한 법률」 제11조(채용서류의 반환 등)에 따라 반환합니다. 다만, 같은 법 제7조제1항에 따라 홈페이
    지 또는 전자우편으로 제출된 경우나 응시자가 채용권자의 요구없이 자발적으로 제출한 경우에는 반환하지 않습니다.
    ※ 기타 상세한 내용은 아래 연락처로 문의하시기 바랍니다.
    TEL 02-1111-1234'
);

--INSERT
--  INTO TBL_TEACHER_EMPLOYMENT
--VALUES
--(  SEQ_EMPLOYMENT_POST_NUM.NEXTVAL, 'MANAGER02', 1
-- , '문화-수채화 그림강사 긴급 모집공고'
-- , '문화강사 모집
--      사랑과 열정으로 지역주민을 위해 봉사할 문화강좌 지도강사님을
--     아래와 같이 모십니다. 뜻있는 분의 많은 관심과 지원 참여 바랍니다.
--  모집 분야 - 성인 수채화 그림 강의
--  선정방법 : 서류(심사위원회) 및 면접심사
--  지원서접수 기 간 : 2022.5.16(월) ~ 5.20(금) 09:00 도착분까지 
--  접수방법 : 방문접수, 이메일접수(manager01@eonadeul.com) 
--  제출서류 : 이력서 1부(사진부착, 연락처 기재), 강의계획서 1부
--  기타 상세한 내용은 아래 연락처로 문의하시기 바랍니다.
--  TEL 02-1111-1234
--  유의사항
--  최종 합격자는 2022년 6월 봄학기부터 강의하실 수 있습니다.
--  지원시 자격요건 등 적합여부를 판단 후 접수하시기 바랍니다.
--  제출된 서류는 반환하지 않습니다.
--  모집분야에 적격자가 없을 시는 선발하지 않을 수도 있습니다.'
--, 'N'
--);

--------------------------------------------------------------
-- 문의(QNA) INSERT
INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'TESTID01'
, 'MANAGER01'
, TO_DATE(SYSDATE,'RRRR.MM.DD HH24:MI')
, '스마트폰 사용법 강의 문의'
, '스마트폰 사용법 강의에 필요한 폰 종류가 따로 있나요?'
, 'Y'
, '스마트폰 종류는 아무거나 준비해 오시면 됩니다, 안드로이드, ios 모두 교육가능 합니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'TESTID02'
, 'MANAGER02'
, TO_DATE(SYSDATE,'RRRR.MM.DD HH24:MI')
, '주식 강의 문의'
, '강사님은 주식투자로 얼마나 벌었나요?'
, 'Y'
, '관련 내용에 대해서는 개인적인 부분이라 저희가 답변 드리기 힘드니 양해바랍니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_QUESTION
VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'TESTID03'
, 'MANAGER03'
, TO_DATE(SYSDATE,'RRRR.MM.DD HH24:MI')
, '촉감 놀이 슬라임 만들기 문의'
, '슬라임은 인체에 무해 한가요?'
, 'N'
, '그럴 수도 있고 아닐 수도 있습니다.'
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_QUESTION

VALUES
(
  SEQ_QUESTION_POST_NUM.NEXTVAL
, '1'
, 'TESTID04'
, 'MANAGER01'
, TO_DATE(SYSDATE,'RRRR.MM.DD HH24:MI')
, '1박 2일 캠핑체험 문의'
, '캠핑장에 가면 따로 놀거리가 있나요?'
, 'N'
, '있지 않을까요?'
, 'Y'
, DEFAULT
);
COMMIT;
-------------------------------------------------------------
-- 민원
INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '3'
, 'TESTID01'
, 'MANAGER02'
, SYSDATE
, '정말 화가 납니다'
, '바닥이 미끄러워 넘어졌습니다'
, 'N'
, NULL
, 'Y'
, DEFAULT
);

INSERT
  INTO TBL_POST_COMPLAIN
VALUES
(
  SEQ_COMPLAIN_POST_NUM.NEXTVAL
, '4'
, 'TESTID02'
, 'MANAGER01'
, SYSDATE
, '직원이 너무 불친절 하네요'
, '직원 교육 똑바로 시키세요!'
, 'N'
, NULL
, 'Y'
, DEFAULT
);

----------------------------------------------------
-- 칭찬
INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '3'
, 'TESTID03'
, SYSDATE
, '시설 대박'
, '시설이 너무 깔끔합니다~'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '3'
, 'TESTID04'
, SYSDATE
, '시설 좋아요~'
, '신축이라 그런지 좋네요~'
, 'N'
, DEFAULT
);

INSERT
  INTO TBL_POST_ADMIRE
VALUES
(
  SEQ_ADMIRE_POST_NUM.NEXTVAL
, '1'
, 'TESTID06'
, SYSDATE
, '주식강좌 굿굿'
, '덕분에 많이 벌었습니다~'
, 'N'
, DEFAULT
);

-- 도서 종류
INSERT
  INTO TBL_BOOK_KINDS
VALUES
(
  'G1'
, '경제'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G2'
, '에세이'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G3'
, '자기계발'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G4'
, '종교'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G5'
, '자연과학'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G6'
, '예술'  
);


INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G7'
, '취미'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G8'
, '어린이'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G9'
, '역사'  
);

INSERT
       INTO TBL_BOOK_KINDS
VALUES
(
  'G10'
, '잡지'  
);

-- 도서 테이블
INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G1'
, '경제야 놀자'
, '김경제'
, 'A1'
, 654879
, 'Y'
, '한빗'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G1'
, '쉽게배우는 경제'
, '김경제'
, 'A1'
, 789979
, 'Y'
, '한빗'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G2'
, '제주도 한달살이'
, '이재주'
, 'A2'
, 579891
, 'Y'
, '이세에'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G2'
, '나는 나다'
, '박주영'
, 'A2'
, 465978
, 'Y'
, '이세에'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G3'
, '재테크 고수의길'
, '이길'
, 'A3'
, 482314
, 'Y'
, '발계'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G3'
, '놀고 싶다'
, '이승우'
, 'A3'
, 887941
, 'Y'
, '발계'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G4'
, '스님의 길'
, '혜민'
, 'A4'
, 759153
, 'Y'
, '종교나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G4'
, '예수 그리스도'
, '문목사'
, 'A4'
, 332644
, 'Y'
, '종교나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G5'
, '지구의 공전 주기'
, '지이구'
, 'A5'
, 369369
, 'Y'
, '과학나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G5'
, '블랙홀의 원리'
, '위르겐 클롭'
, 'A5'
, 220025
, 'Y'
, '과학나라'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G6'
, '쉽게 배우는 보색의 원리'
, '문홍식'
, 'A6'
, 789885
, 'Y'
, '예술당'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G6'
, '원근법의 이해'
, '정원근'
, 'A6'
, 654134
, 'Y'
, '예술당'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G7'
, '재밌는 종이접기'
, '김영만'
, 'A7'
, 454879
, 'Y'
, '산토끼'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G7'
, '자취 요리 백과사전'
, '엄용백'
, 'A7'
, 642727
, 'Y'
, '산토끼'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G8'
, '내 토마토를 누가 가져갔을까'
, '시오 월콧'
, 'A8'
, 795415
, 'Y'
, '동심지킴이'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G8'
, '옷이 작아졌어요!'
, '프란시스 은가누'
, 'A8'
, 654833
, 'Y'
, '동심지킴이'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G9'
, '백제성의 함락'
, '차두리'
, 'A9'
, 637778
, 'Y'
, '고구려'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G9'
, '통인 신라와 당나라'
, '홍명보'
, 'A9'
, 894848
, 'Y'
, '고구려'
);


INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G10'
, 'MZ 세대가 좋아하는 브랜드는?'
, '우영미'
, 'A10'
, 112433
, 'Y'
, '민들레'
);

INSERT 
       INTO TBL_BOOK_INFO
VALUES
(
  SEQ_BOOK_INFO_CODE.NEXTVAL
, 'G10'
, '미니멀 인테리어'
, '엘링 홀란드'
, 'A10'
, 836207
, 'Y'
, '민들레'
);

INSERT 
  INTO TBL_BOOK_RENT
VALUES  
(
  SEQ_BOOK_RENT_NUM.NEXTVAL
, 1  
, 'TESTID01'
, SYSDATE
, NULL
, 'N'
);

INSERT 
  INTO TBL_BOOK_RENT
VALUES  
(
  SEQ_BOOK_RENT_NUM.NEXTVAL
, 2  
, 'TESTID02'
, TO_DATE(20220510, 'RRRRMMDD')
, NULL
, 'Y'
);

INSERT 
  INTO TBL_BOOK_RENT
VALUES  
(
  SEQ_BOOK_RENT_NUM.NEXTVAL
, 3  
, 'TESTID03'
, SYSDATE
, NULL
, 'N'
);

INSERT 
  INTO TBL_BOOK_RENT
VALUES  
(
  SEQ_BOOK_RENT_NUM.NEXTVAL
, 4  
, 'TESTID04'
, TO_DATE(20220510, 'RRRRMMDD')
, TO_DATE(20220518, 'RRRRMMDD')
, 'N'
);

INSERT 
  INTO TBL_CLASS_PAYMENT
VALUES
(
  'TESTID01'
, 1
, 30000
, TO_DATE(20220109,'RRRRMMDD')
, 'N'
, '계좌이체'
);  

INSERT 
  INTO TBL_CLASS_PAYMENT
VALUES
(
  'TESTID02'
, 2
, 30000
, TO_DATE(20220109,'RRRRMMDD')
, 'Y'
, '계좌이체'
);  

INSERT 
  INTO TBL_CLASS_PAYMENT
VALUES
(
  'TESTID03'
, 3
, 40000
, TO_DATE(20220109,'RRRRMMDD')
, 'Y'
, '계좌이체'
);  

INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'TESTID01'
, 1
, 'N'
);

INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'TESTID02'
, 2
, 'Y'
);

INSERT 
  INTO TBL_CLASS_MEMBER
VALUES
(
  'TESTID03'
, 3
, 'Y'
);

INSERT 
  INTO TBL_RENT_REQUEST
VALUES
(
  SEQ_REQUEST_POST_NUM.NEXTVAL
, 201
, 'MANAGER01'
, 'TESTID01'
, 'Y'
, 100000
, 'Y'
, 'N'
, TO_DATE(20220109,'RRRRMMDD')
, TO_DATE(20220113,'RRRRMMDD')
);

INSERT 
  INTO TBL_RENT_REQUEST
VALUES
(
  SEQ_REQUEST_POST_NUM.NEXTVAL
, 301
, 'MANAGER02'
, 'TESTID02'
, 'N'
, 80000
, 'N'
, 'Y'
, TO_DATE(20220109,'RRRRMMDD')
, TO_DATE(20220113,'RRRRMMDD')
);

commit;