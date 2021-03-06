--Dolbajo
--system으로 접속
--계정을 만든다
--create user Dolbajo identified by 1234;
--권한부여하기 
--grant connect, resource to Dolbajo;
--접속
--conn Dolbajo/1234;

--OWNER

    --DROP table OWNER;   
    create table OWNER(
        OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,--견주id
        OWNER_PASSWORD VARCHAR(20) NOT NULL, --비밀번호
        OWNER_NAME VARCHAR(20) NOT NULL, --이름
        OWNER_ADDR VARCHAR(200) NOT NULL, --주소
        OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL, --상세주소
        OWNER_PHONE VARCHAR(20) NOT NULL, --핸드폰
        OWNER_EMAIL VARCHAR(40) NOT NULL, --이메일
        OWNER_fname VARCHAR(50) NULL,--사진이미지
        OWNER_gender VARCHAR(5) NOT NULL --OWNER성별
    );         
    --select * from OWNER;   
    
    insert into OWNER values('happymom','1234','김진주','경기도 성남시 분당구 판교역로 235',' 에이치스퀘어 엔동','000-000-0000','abcd@naver.com','IMG_01.jpg','여');
    insert into OWNER values('cloud','1234','구름이아빠','경기 성남시 분당구 문정로 145','null','000-000-0000','defg@naver.com','IMG_02.jpg','남');
    insert into OWNER values('any6103','1234','김진희','경기도 성남시 분당구 성남대로 601','null','000-000-0000','hijk@naver.com','IMG_03.jpg','여');
    insert into OWNER values('flower','1234','이루리','서울 강남구 압구정로12길 46','null','000-000-0000','lmnop@naver.com','IMG_04.jpg','남');
    insert into OWNER values('happy','1234','조아라','서울특별시 강남구 강남대로162길 36 동양빌딩','null','000-000-0000','qrst@naver.com','IMG_05.jpg','남');
    
    insert into OWNER values('jang','1234','장희정','경기도 성남시 분당구 판교역로 160','null','000-000-0000','jang@naver.com','IMG_06.jpg','여');
    insert into OWNER values('baek','1234','백승현','경기 성남시 분당구 동판교로52번길 25-18','null','000-000-0000','baek@naver.com','IMG_07.jpg','남');
    insert into OWNER values('yeun','1234','김시연','경기도 성남시 분당구 판교역로 236','null','000-000-0000','yeun@naver.com','IMG_08.jpg','여');
    insert into OWNER values('jun','1234','전태준','경기 성남시 분당구 정자일로 239 ','null','000-000-0000','jun@naver.com','IMG_09.jpg','남');
    insert into OWNER values('han','1234','정한별','경기도 성남시 분당구 심평동 판교역로 226번길','null','000-000-0000','han@naver.com','IMG_10.jpg','남');

--SITTER

    --DROP table SITTER;
    create table SITTER(
        SITTER_ID VARCHAR(50) not null constraint SITTER_ID_pk primary key,--펫시터id
        SITTER_PASSWORD VARCHAR(20) NOT NULL, --비밀번호
        SITTER_NAME VARCHAR(20) NOT NULL, --이름
        SITTER_PHONE VARCHAR(20) NOT NULL, --핸드폰
        SITTER_EMAIL VARCHAR(40) NOT NULL, --이메일    
        SITTER_ADDR VARCHAR(200) NOT NULL, --주소
        SITTER_DETAIL_ADDR VARCHAR(100) NOT NULL, --상세주소
        SITTER_INTRODUCE VARCHAR(200) NOT NULL, --자기소개
        SITTER_GRADE NUMBER NOT NULL, --평점
        SITTER_CERTIFICATION VARCHAR(50) NULL, --자격증
        SITTER_PET_AMOUNT NUMBER NOT NULL, --소유펫 마리수
        SITTER_BASIS_PRICE NUMBER NOT NULL, --기본가격
        SITTER_PERMIT VARCHAR(5) NULL,--합격여부
        SITTER_fname VARCHAR(50) NULL,--사진이미지
        Scertification_fname  VARCHAR(50) NULL,--자격증
        Sitter_gender VARCHAR(5) NOT NULL --시터 성별       
    );        
    --select * from SITTER;    

    --alter table SITTER  add (Sitter_gender VARCHAR(5) NOT NULL); --시터 성별
    
    insert into SITTER values('goodsitter','1234','이효리','000-000-0000','abcd@naver.com','경기도 성남시 분당구 판교역로 235', '에이치스퀘어 엔동','안녕하세요','5',null,1,50000,null,'IMG_11.jpg',null,'여');
    insert into SITTER values('bestsitter','1234','박보검','000-000-0000','abdd@naver.com','경기도 성남시 분당구 심평동 판교역로 226번길 16', 'null','열정이넘치는','5',null,0,50000,null,'IMG_12.jpg',null,'남');
    insert into SITTER values('kind','1234','박민영','000-000-0000','efg@naver.com','경기 성남시 분당구 정자일로 239', 'null','내 아이처럼','0',null,1,27000,null,'IMG_13.jpg',null,'여');
    insert into SITTER values('happysis','1234','박서준','000-000-0000','happy@naver.com','경기도 성남시 분당구 대왕판교로 660 유스페이스1', 'null','맡겨만주세요','1',null,1,30000,null,'IMG_14.jpg',null,'남');
    insert into SITTER values('meme','1234','설리','000-000-0000','hijk@naver.com','경기 성남시 분당구 동판교로52번길 25-18', 'null','최고의서비스','3',null,1,40000,null,'IMG_15.jpg',null,'여');
    
    insert into SITTER values('woo','1234','은우','000-000-0000','woo@naver.com','경기 성남시 분당구 판교역로192번길', 'null','최고의서비스','3',null,1,40000,null,'IMG_16.jpg',null,'여');
    insert into SITTER values('top','1234','탑','000-000-0000','top@naver.com','경기도 성남시 분당구 판교역로 160', 'null','최고의서비스','3',null,1,40000,null,'IMG_17.jpg',null,'여');
    insert into SITTER values('kang','1234','서강준','000-000-0000','kang@naver.com','서울 강남구 압구정로12길 46', 'null','최고의서비스','3',null,1,40000,null,'IMG_18.jpg',null,'여');
    insert into SITTER values('iu','1234','아이유','000-000-0000','iu@naver.com','서울특별시 강남구 강남대로162길 36 동양빌딩', 'null','최고의서비스','3',null,1,40000,null,'IMG_19.jpg',null,'여');
    insert into SITTER values('cl','1234','씨엘','000-000-0000','cl@naver.com','경기도 성남시 분당구 성남대로 601', 'null','최고의서비스','3',null,1,40000,null,'IMG_20.jpg',null,'여');
    
    insert into SITTER values('jiso','1234','지수','000-000-0000','jiso@naver.com','판교역로10번길', 'null','최고의서비스','3',null,1,40000,null,'IMG_21.jpg',null,'여');
    insert into SITTER values('jani','1234','제니','000-000-0000','jani@naver.com','서울 강남구 도산대로11길 5', 'null','최고의서비스','3',null,1,40000,null,'IMG_22.jpg',null,'여');
    insert into SITTER values('rose','1234','로제','000-000-0000','rose@naver.com','서울 강남구 강남대로160길 29', 'null','최고의서비스','3',null,1,40000,null,'IMG_23.jpg',null,'여');
    insert into SITTER values('lisa','1234','리사','000-000-0000','lisa@naver.com','서울 강남구 압구정로10길 30-3', 'null','최고의서비스','3',null,1,40000,null,'IMG_24.jpg',null,'여');
    insert into SITTER values('hi','1234','이하이','000-000-0000','hi@naver.com','서울특별시 강남구 도산대로12길 7', 'null','최고의서비스','3',null,1,40000,null,'IMG_25.jpg',null,'여');
    
    insert into SITTER values('suhyun','1234','이수현','000-000-0000','suhyun@naver.com','서울 용산구 보광로60길 22 ', 'null','최고의서비스','3',null,1,40000,null,'IMG_26.jpg',null,'여');
    insert into SITTER values('hee','1234','김희정','000-000-0000','hee@naver.com','서울특별시 용산구 이태원로15길 1 ', '2층','최고의서비스','3',null,1,40000,null,'IMG_27.jpg',null,'여');
    insert into SITTER values('rm','1234','랩몬스터','000-000-0000','rm@naver.com','서울특별시 용산구 이태원로27가길 10', 'null','최고의서비스','3',null,1,40000,null,'IMG_28.jpg',null,'여');
    insert into SITTER values('sul','1234','설현','000-000-0000','sul@naver.com','서울특별시 용산구 이태원로 136-13', 'null','최고의서비스','3',null,1,40000,null,'IMG_29.jpg',null,'여');
    insert into SITTER values('kyung','1234','김진경','000-000-0000','kyung@naver.com','서울특별시 용산구 이태원로27가길 52 ', 'null','최고의서비스','3',null,1,40000,null,'IMG_30.jpg',null,'여');
    
    insert into SITTER values('jangh','1234','정혁','000-000-0000','jangh@naver.com','서울특별시 용산구 이태원로27가길 26 ', 'null','최고의서비스','3',null,1,40000,null,'IMG_31.jpg',null,'여');

--pet

    --DROP table pet;  
    create table pet(
        pet_id VARCHAR(50) not null constraint pet_id_pk primary key,--펫id
        OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        PET_NAME VARCHAR(20) NOT NULL, --이름
        pet_species VARCHAR(20) not null ,--종
        pet_size VARCHAR(10) not null,--견종크기 (대/중/소)
        pet_liness VARCHAR(50) not null, --질병없음으로 작성
        pet_weight NUMBER not null,--몸무게
        pet_gender VARCHAR(5) not null, --성별
        pet_age NUMBER not null ,--나이
        pet_fname VARCHAR(50) null ,--사진이름
        pet_fsize NUMBER null --사진크기
    );
    --select * from pet; 
    --select * from OWNER; 
    --alter table pet rename column petd_id  to  pet_id;
    
    --DROP SEQUENCE sequence_pet;
    CREATE SEQUENCE sequence_pet
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_pet.NEXTVAL FROM DUAL;
    --SELECT sequence_pet.CURRVAL FROM DUAL;
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happymom','해피','푸들','소','없음',3,'여',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'cloud','구름이','푸들','소','없음',3,'남',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'any6103','꽃님이','푸들','소','없음',4,'여',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'flower','나나','꼬똥','중','없음',6,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happy','꾸루','말티푸','소','없음',4,'여',2,null, null);
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'jang','두부','말티즈','소','없음',3,'여',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'baek','다다','꼬똥','소','없음',3,'남',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'yeun','철쭉','슈나우져','소','없음',4,'여',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'jun','철수','잡종','중','없음',6,'남',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'han','샤니','비숑','중','없음',4,'여',2,null, null);

--review

    --DROP table review;
    create table review(
        review_id VARCHAR(20) not null constraint review_id_pk primary key,--리뷰id
        OWNER_ID VARCHAR(50) not null constraint review_OWNER_ID_fk references OWNER(OWNER_ID),--견주id -- on delete cascade부모레코드가 삭제될 때 자식 레코드가 함께 삭제
        review_title VARCHAR(100) NOT NULL,--제목
        review_content VARCHAR(4000) NOT NULL,--내용
        review_readnum NUMBER DEFAULT 0,--조회수
        review_writeday DATE NOT NULL,--작성일
        review_pwd VARCHAR(50) NOT NULL--게시글 비밀번호
    );
    --select * from review; 

    --DROP SEQUENCE sequence_review;
    CREATE SEQUENCE sequence_review
    START WITH 1
    INCREMENT BY 1;
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;  
    
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happymom','정말좋네요','해피가 좋아해요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'cloud','구름이가좋아해요','좋네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'any6103','펫시터 좋아요','우리아기 안심하고 맡길수 있을거 같아요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'flower','자주이용할거 같아요','마음이 놓이네요',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happy','정말 친절해요','애기가좋아해요',0,sysdate,'1234');

--QA

    --DROP table qa;
    create table QA(
        QA_id VARCHAR(50) not null constraint qa_id_pk primary key,--QAid
        OWNER_ID VARCHAR(50) not null constraint qa_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        QA_title VARCHAR(100) NOT NULL,--제목
        QA_content VARCHAR(4000) NOT NULL,--내용
        QA_writeday DATE NOT NULL,--작성일
        QA_readnum NUMBER DEFAULT 0,--조회수
        QA_pwd VARCHAR(50) NOT NULL--게시글 비밀번호
    );
    --select * from qa; 
    
    --DROP SEQUENCE sequence_qa;
    CREATE SEQUENCE sequence_qa
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_qa.NEXTVAL FROM DUAL;
    --SELECT sequence_qa.CURRVAL FROM DUAL;

    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happymom','펫시터의 신원확인 문의','펫시터 신원검증은 어떻게 이루어지나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'cloud','돌봄상태 확인문의','돌봄상태 확인은 어떻게 하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'any6103','요금산정기준','요금산정기준이 궁금해요',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'flower','펫시터등록문의','펫시터 등록에 돈을 내야하나요?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happy','훈련문의','펫시터는 어떤교육을받나요?',sysdate,0,'1234');

--reply

    --DROP table reply;
    create table reply(
        reply_id VARCHAR(50) not null constraint reply_id_pk primary key,--댓글id
        QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id), --QAid
        OWNER_ID VARCHAR(50) not null constraint reply_OWNER_ID_fk references OWNER(OWNER_ID),--견주id 
        reply_content VARCHAR(4000) not null, --댓글내용
        reply_writeday DATE not null -- 작성일
    );
    --select * from reply; 
    --select * from qa;
    
    --DROP SEQUENCE sequence_reply;
    CREATE SEQUENCE sequence_reply
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_reply.NEXTVAL FROM DUAL;
    --SELECT sequence_reply.CURRVAL FROM DUAL;  
    
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','happymom','펫시터의 신원확인은 서류로 하고있습니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','cloud','돌봄상태 확인은 시간별로 메세지를 보내드립니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','any6103','요금은 27000원부터 시작합니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','flower','펫시터등록은 무료입니다',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','happy','자사의 교육을 수료합니다',sysdate);

--SITTER_review

    --DROP table SITTER_review;
    create table SITTER_review(
        SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,--펫시터후기 id
        SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_review_content VARCHAR(4000) NOT NULL,--내용
        SITTER_review_writeday DATE NOT NULL,--작성일
        SITTER_review_grade NUMBER NOT NULL--평점
    );
    --select * from SITTER_review; 

    --DROP SEQUENCE sequence_SITTER_review;
    CREATE SEQUENCE sequence_SITTER_review
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','happymom','정말 친절해요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','cloud',' 아이랑 잘 놀아줘요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','any6103','산책을 정말 잘해주세요',sysdate,5);    
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','happymom','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','flower','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','happy','아이가 좋아해요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','happymom','수제간식을 줘서 좋았어요',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','baek','정말 친절해요',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','yeun','뒷처리도 깔끔해요',sysdate,3);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','happymom','집이 가까워서 좋아요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','jang','수제간식을 줘서 좋았어요',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','flower','아이가 좋아해요',sysdate,5);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happymom','아이랑 잘 놀아줘요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','yeun','믿고맡길수 있어요',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happy','사진과 상태를 수시로 보내줘서 좋았어요',sysdate,4);
    
--OPTIONS

    --DROP table OPTIONS;
    create table OPTIONS( --OPTION으로는 테이블 생성 불가 (예약어)
        OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,--옵션id
        OPTION_NAME VARCHAR(50) not null --목록
    );
    --select * from OPTIONS;   
    
    --DROP SEQUENCE sequence_OPTIONS; 
    CREATE SEQUENCE sequence_OPTIONS
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_OPTIONS.NEXTVAL FROM DUAL;
    --SELECT sequence_OPTIONS.CURRVAL FROM DUAL;

    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'산책');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'목욕');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'노령견케어');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'자격증보유');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'응급처치');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'대형견');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'반려견없는곳');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'집중케어');

--SITTING_OPTION

    --DROP table SITTING_OPTION;
    create table SITTING_OPTION(
        SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,--펫시팅옵션id
        OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),--옵션id
        sitting_id VARCHAR(50) not null --부르기 맡기기 ID
    );
    
    --alter table SITTING_OPTION rename column REQUEST_ID  to  sitting_id

    --select * from SITTING_OPTION;   
    --select * from OPTIONS;
    --select * from owner_request;
    --select * from call;

    --DROP SEQUENCE sequence_SITTING_OPTION;
    CREATE SEQUENCE sequence_SITTING_OPTION
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTING_OPTION.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTING_OPTION.CURRVAL FROM DUAL;

    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-2','OWNER_REQUEST_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-3','OWNER_REQUEST_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-4','OWNER_REQUEST_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-5','OWNER_REQUEST_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','OWNER_REQUEST_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-6','OWNER_REQUEST_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-7','call_id-1');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-8','call_id-2');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-4','call_id-3');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-5','call_id-4');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-1','call_id-5');
    INSERT INTO SITTING_OPTION VALUES ('SITTING_OPTION_ID-'||sequence_SITTING_OPTION.NEXTVAL,'OPTION_ID-7','call_id-5');
    
    --select distinct OPTION_ID as op_id
    --from SITTING_OPTION ;
    --select * from SITTING_OPTION; 

--SITTER_OPTION

    --DROP table SITTER_OPTION;
    Create table SITTER_OPTION(
        SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,--펫시터옵션ID
        SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)--옵션id
    );
    --select * from SITTER_OPTION;   
    --select * from OPTIONs; 
    --select * from SITTER;
    
    --DROP SEQUENCE sequence_SITTER_OPTION;
    CREATE SEQUENCE sequence_SITTER_OPTION
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTER_OPTION.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_OPTION.CURRVAL FROM DUAL;

    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'goodsitter','OPTION_ID-8');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'bestsitter','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'kind','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'happysis','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'meme','OPTION_ID-1');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'top','OPTION_ID-8');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-2');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-3');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-4');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-5');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-6');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-7');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'woo','OPTION_ID-8');
    
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'kang','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'iu','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'cl','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'jiso','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'jani','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'rose','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'lisa','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'hi','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'suhyun','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'hee','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'rm','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sul','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'kyung','OPTION_ID-1');
    insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'jangh','OPTION_ID-1');
 
--OWNER_REQUEST

    --DROP table OWNER_REQUEST;
    Create table OWNER_REQUEST(
        OWNER_REQUEST_id VARCHAR(50) not null constraint OWNER_REQUEST_id_pk primary key,--견주가 신청 ID
        OWNER_ID VARCHAR(50) not null constraint OWNER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint OWNER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        OWNER_REQUEST_PRICE NUMBER  NOT NULL,--총가격
        OWNER_REQUEST_START DATE NOT NULL,--예약시작일
        OWNER_REQUEST_END DATE NOT NULL,--예약종료일
        OWNER_REQUEST_PETCOUNT NUMBER NOT NULL,--펫마리수
        SITTER_APPROVAL VARCHAR(5) NULL--펫시터승인여부
    );
    --select * from OWNER_REQUEST; 
    --select * from SITTER; 
    --select * from owner; 

    --DROP SEQUENCE sequence_OWNER_REQUEST;
    CREATE SEQUENCE sequence_OWNER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_OWNER_REQUEST.NEXTVAL FROM DUAL;
    --SELECT sequence_OWNER_REQUEST.CURRVAL FROM DUAL;

    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','goodsitter',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','goodsitter',35000,'18-06-08','18-06-09',2,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','goodsitter',28000,'18-06-05','18-06-06',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','goodsitter',50000,'18-06-04','18-06-05',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','goodsitter',30000,'18-06-07','18-06-08',1,NULL);
    
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'jang','goodsitter',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'baek','goodsitter',35000,'18-06-10','18-06-11',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'yeun','goodsitter',28000,'18-06-11','18-06-12',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'jun','goodsitter',50000,'18-06-13','18-06-14',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'han','goodsitter',30000,'18-06-15','18-06-16',1,NULL);    
    
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','bestsitter',35000,'18-06-08','18-06-09',2,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','kind',28000,'18-06-05','18-06-06',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','happysis',50000,'18-06-04','18-06-05',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','meme',30000,'18-06-07','18-06-08',1,NULL);
    
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','rose',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','bestsitter',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','kind',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','happysis',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','meme',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','woo',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','top',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','iu',27000,'18-06-02','18-06-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','cl',27000,'18-06-02','18-06-03',1,NULL);

--call

    --DROP table call;
    create table call(
        call_id VARCHAR(50) not null constraint call_id_pk primary key,--부르기id
        OWNER_ID VARCHAR(50) not null constraint call_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint call_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        call_total_price NUMBER NOT NULL,--총가격
        CALL_COMMENT VARCHAR(200) NOT NULL,--코멘트
        CALL_RESERVATE_START DATE NOT NULL,--예약시작일
        CALL_RESERVATE_END DATE NOT NULL,--예약종료일
        CALL_WRITEDAY DATE NOT NULL,--작성일
        CALL_PETCOUNT NUMBER NOT NULL,--펫 마리수 
        OWNER_APPROVAL VARCHAR(5) NULL--견주승인여부
    );
    --select * from call; 
    --select * from OWNER_REQUEST; 
    
    --DROP SEQUENCE sequence_CALL;
    CREATE SEQUENCE sequence_CALL
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_CALL.NEXTVAL FROM DUAL;
    --SELECT sequence_CALL.CURRVAL FROM DUAL;
    --truncate table CALL;
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom',NULL,30000,'예민합니다','18-06-02','18-06-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud',NULL,100000,'활발합니다','18-06-10','18-06-12',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103',NULL,40000,'노견이에요','18-06-13','18-06-14',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower',NULL,60000,'약을꼭 챙겨주세요','18-06-15','18-06-16',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy',NULL,29000,'실외배변입니다','18-06-06','18-06-07',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud','goodsitter',100000,'활발합니다','18-06-10','18-06-12',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103','goodsitter',40000,'노견이에요','18-06-13','18-06-14',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower','goodsitter',60000,'약을꼭 챙겨주세요','18-06-15','18-06-16',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy','goodsitter',29000,'실외배변입니다','18-06-06','18-06-07',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'han','goodsitter',100000,'활발합니다','18-06-05','18-06-06',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'jun','goodsitter',40000,'노견이에요','18-06-07','18-06-08',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'yeun','goodsitter',60000,'약을꼭 챙겨주세요','18-06-01','18-06-02',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'baek','goodsitter',29000,'실외배변입니다','18-06-03','18-06-04',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'jang','goodsitter',29000,'실외배변입니다','18-06-08','18-07-09',sysdate,1,NULL);

    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','goodsitter',30000,'예민합니다','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','bestsitter',30000,'예민합니다','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','kind',30000,'예민합니다','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','happysis',30000,'예민합니다','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','meme',30000,'예민합니다','18-06-16','18-06-17',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','woo',30000,'예민합니다','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','top',30000,'예민합니다','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','kang',30000,'예민합니다','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','iu',30000,'예민합니다','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','jani',30000,'예민합니다','18-06-17','18-06-18',sysdate,1,NULL);
    
    --Delete CALL where OWNER_ID ='happymom';
    --truncate table CALL ;  
    
--SITTER_REQUEST

    --DROP table SITTER_REQUEST;
    Create table SITTER_REQUEST(
        SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,--펫시터가 신청
        call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),--부르기id
        OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
        SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID)--펫시터id
    );
    --select * from SITTER_REQUEST; 
    --select * from call; 
    
    --DROP SEQUENCE sequence_SITTER_REQUEST;
    CREATE SEQUENCE sequence_SITTER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    --SELECT sequence_SITTER_REQUEST.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_REQUEST.CURRVAL FROM DUAL;
    
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-1','happymom','goodsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-2','cloud','bestsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-3','any6103','kind');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-4','flower','happysis');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-5','happy','meme');
  
--DIARY

    --DROP table DIARY;
   Create table DIARY(
    DAILY_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,--일지 ID
    SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
    OWNER_ID VARCHAR(50) not null constraint DIARY_OWNER_ID_fk references OWNER(OWNER_ID),--견주id
    SITTING_ID VARCHAR(50) not null, --부르기/맡기기 ID
    DIARY_TITLE VARCHAR(100) not null ,--제목
    DIARY_CONTENT VARCHAR(4000) not null ,--내용
    DIARY_WRITEDAY DATE not null ,--작성일
    DIARY_PWD VARCHAR(50) not null ,--게시글 비밀번호
    DIARY_FNAME VARCHAR(50) null
);    --select * from DIARY; 

    --DROP SEQUENCE sequence_DIARY;
    CREATE SEQUENCE sequence_DIARY
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_DIARY.NEXTVAL FROM DUAL;
    --SELECT sequence_DIARY.CURRVAL FROM DUAL;

     insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','산책을 다녀왔어요','탄천산책을 다녀왔어요',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234',NULL);
    
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','cloud','OWNER_REQUEST_id-2','순한아이에요','오늘은 강아지놀이터를 다녀왔어요',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'kind','any6103','OWNER_REQUEST_id-12','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'happysis','flower','OWNER_REQUEST_id-13','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'meme','happy','OWNER_REQUEST_id-16','약을 잘 안먹어요','혹시 견주님이 약을 주는 노하우 있으신가요?',SYSDATE,'1234',NULL);

    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','산책을 다녀왔어요','탄천산책을 다녀왔어요',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','목욕을 했습니다','오늘은 요청하신 목욕을 했습니다',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','밥을잘 안먹어요','아직 적응이 필요한것 같습니다',SYSDATE,'1234',NULL);
    
    select * from DIARY;  
    
--ADMIN
    --DROP table ADMIN;
    create table ADMIN( 
        ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,--관리자id
        ADMIN_PASSWORD VARCHAR(20) not null--비밀번호
    );
    --select * from ADMIN;   

    INSERT INTO ADMIN VALUES ('ADMIN','1234');
    --delete ADMIN where admin_id='ADMIN2';
    --select admin_id as id , ADMIN_PASSWORD as pwd
    --from ADMIN

--NOTICE

    --DROP table NOTICE;
    create table NOTICE( 
        NOTICE_ID VARCHAR(50) not null constraint NOTICE_ID_pk primary key,--공지사항id
        NOTICE_TITLE VARCHAR(100) not null,--제목
        NOTICE_CONTENT VARCHAR(4000) not null,--내용
        NOTICE_WRITEDAY DATE not null,--작성일
        NOTICE_READNUM NUMBER not null,--조회수
        NOTICE_FNAME VARCHAR(50) null,--첨부사진이름
        NOTICE_FSIZE NUMBER null--첨부사진크기
       );
    --select * from NOTICE;   

    --DROP SEQUENCE sequence_NOTICE_ID;
    CREATE SEQUENCE sequence_NOTICE_ID
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_NOTICE_ID.NEXTVAL FROM DUAL;
    --SELECT sequence_NOTICE_ID.CURRVAL FROM DUAL;

    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항1','공지사항1',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항2','공지사항2',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항3','공지사항3',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항4','공지사항4',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'공지사항5','공지사항5',SYSDATE,0,NULL,NULL);

--SITTER_IMG

    --DROP table SITTER_IMG;   
    Create table SITTER_IMG(
        SITTER_IMG_ID VARCHAR(50) not null constraint SITTER_IMG_ID_pk primary key,--공지사항id
        SITTER_ID VARCHAR(50) not null constraint SITTER_IMG_SITTER_ID_fk  references SITTER(SITTER_ID),--펫시터id
        Sitter_img_name VARCHAR(50) null,
        Sitter_Img_URL VARCHAR(50) null
    );
    --select * from sitter_img;
    --select * from sitter;
        
    --DROP SEQUENCE sequence_SITTER_IMG_ID;
    CREATE SEQUENCE sequence_SITTER_IMG_ID
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_SITTER_IMG_ID.NEXTVAL FROM DUAL;
    --SELECT sequence_SITTER_IMG_ID.CURRVAL FROM DUAL;
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,'5.jpg');
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,'1.PNG');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,'2.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,'3.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,'4.jpg');
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,'5.jpg');
    
--권한
     --DROP table AUTHORITIES;
    CREATE TABLE AUTHORITIES(
       USER_ID VARCHAR2(100) NOT NULL, /* ID*/
       ROLE VARCHAR(30) NOT NULL,    
       PASSWORD VARCHAR(30) NULL,
       USER_NAME VARCHAR(30) NULL,
       CONSTRAINT AUTHORITIES_PK PRIMARY KEY(USER_ID,ROLE)
    );
    select * from AUTHORITIES;
    select * from OWNER;
    select * from SITTER;
    
    insert into AUTHORITIES VALUES ('ADMIN','ADMIN','1234','관리자');
    
    insert into AUTHORITIES VALUES ('happymom','OWNER','1234','김진주');
    insert into AUTHORITIES VALUES ('cloud','OWNER','1234','백승현');
    insert into AUTHORITIES VALUES ('any6103','OWNER','1234','김시연');
    insert into AUTHORITIES VALUES ('flower','OWNER','1234','전태준');
    insert into AUTHORITIES VALUES ('happy','OWNER','1234','정한별');
    
    insert into AUTHORITIES VALUES ('goodsitter','SITTER','1234','이효리');
    insert into AUTHORITIES VALUES ('bestsitter','SITTER','1234','박보검');
    insert into AUTHORITIES VALUES ('kind','SITTER','1234','박민영');
    insert into AUTHORITIES VALUES ('happysis','SITTER','1234','박서준');
    insert into AUTHORITIES VALUES ('meme','SITTER','1234','설리');
    
COMMIT;
--ROLLBACK ;
