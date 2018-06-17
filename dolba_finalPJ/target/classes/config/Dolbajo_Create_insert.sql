create table OWNER(
        OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,
        OWNER_PASSWORD VARCHAR(20) NOT NULL, 
        OWNER_NAME VARCHAR(20) NOT NULL, 
        OWNER_ADDR VARCHAR(200) NOT NULL,
        OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL,
        OWNER_PHONE VARCHAR(20) NOT NULL,
        OWNER_EMAIL VARCHAR(40) NOT NULL, 
        OWNER_fname VARCHAR(50) NULL,
        OWNER_gender VARCHAR(5) NOT NULL 
    ); 
    
    insert into OWNER values('happymom','1234','������','��⵵','������','000-000-0000','abcd@naver.com',null,'��');
    insert into OWNER values('cloud','1234','�����','��⵵','����','000-000-0000','defg@naver.com',null,'��');
    insert into OWNER values('any6103','1234','��ÿ�','����','����','000-000-0000','hijk@naver.com',null,'��');
    insert into OWNER values('flower','1234','������','�λ�','����','000-000-0000','lmnop@naver.com',null,'��');
    insert into OWNER values('happy','1234','���Ѻ�','����','�б���','000-000-0000','qrst@naver.com',null,'��');
   
    select * from OWNER;
    
create table SITTER(
        SITTER_ID VARCHAR(50) not null constraint SITTER_ID_pk primary key,
        SITTER_PASSWORD VARCHAR(20) NOT NULL,
        SITTER_NAME VARCHAR(20) NOT NULL,
        SITTER_PHONE VARCHAR(20) NOT NULL,
        SITTER_EMAIL VARCHAR(40) NOT NULL, 
        SITTER_ADDR VARCHAR(200) NOT NULL,
        SITTER_DETAIL_ADDR VARCHAR(100) NOT NULL, 
        SITTER_INTRODUCE VARCHAR(200) NOT NULL, 
        SITTER_GRADE NUMBER NOT NULL, 
        SITTER_CERTIFICATION VARCHAR(50) NULL,
        SITTER_PET_AMOUNT NUMBER NOT NULL,
        SITTER_BASIS_PRICE NUMBER NOT NULL,
        SITTER_PERMIT VARCHAR(5) NULL,
        Sitter_gender VARCHAR(5) NOT NULL
    ); 
    
    insert into SITTER values('goodsitter','1234','��ȿ��','000-000-0000','abcd@naver.com','��⵵', '�ź���','�ȳ��ϼ���','5',null,1,50000,null,'��');
    insert into SITTER values('bestsitter','1234','�ں���','000-000-0000','abdd@naver.com','��⵵', '������','�����̳�ġ��','5',null,0,50000,null,'��');
    insert into SITTER values('kind','1234','�ڹο�','000-000-0000','efg@naver.com','��⵵', '����','�� ����ó��','0',null,1,27000,null,'��');
    insert into SITTER values('happysis','1234','�ڼ���','000-000-0000','happy@naver.com','������', '����','�ðܸ��ּ���','1',null,1,30000,null,'��');
    insert into SITTER values('meme','1234','����','000-000-0000','hijk@naver.com','�����', '�����','�ְ��Ǽ���','3',null,1,40000,null,'��');
    
    select * from SITTER; 

create table pet(
        pet_id VARCHAR(50) not null constraint pet_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),
        PET_NAME VARCHAR(20) NOT NULL, 
        pet_species VARCHAR(20) not null ,
        pet_size VARCHAR(10) not null,
        pet_liness VARCHAR(50) not null,
        pet_weight NUMBER not null,
        pet_gender VARCHAR(5) not null,
        pet_age NUMBER not null,
        pet_fname VARCHAR(50) null,
        pet_fsize NUMBER null
    );
    
    CREATE SEQUENCE sequence_pet
    START WITH 1
    INCREMENT BY 1;
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happymom','����','Ǫ��','��','����',3,'��',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'cloud','������','Ǫ��','��','����',3,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'any6103','�ɴ���','Ǫ��','��','����',4,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'flower','����','����','��','����',6,'��',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happy','�ٷ�','��ƼǪ','��','����',4,'��',2,null, null);

    select * from pet;

create table review(
        review_id VARCHAR(20) not null constraint review_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint review_OWNER_ID_fk references OWNER(OWNER_ID),
        review_title VARCHAR(100) NOT NULL,
        review_content VARCHAR(4000) NOT NULL,
        review_readnum NUMBER DEFAULT 0,
        review_writeday DATE NOT NULL,
        review_pwd VARCHAR(50) NOT NULL
    );
    
    CREATE SEQUENCE sequence_review
    START WITH 1
    INCREMENT BY 1;
    
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happymom','�������׿�','���ǰ� �����ؿ�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'cloud','�����̰������ؿ�','���׿�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'any6103','����� ���ƿ�','�츮�Ʊ� �Ƚ��ϰ� �ñ�� ������ ���ƿ�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'flower','�����̿��Ұ� ���ƿ�','������ ���̳׿�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happy','���� ģ���ؿ�','�ֱⰡ�����ؿ�',0,sysdate,'1234');

   select * from review; 

create table QA(
    QA_id VARCHAR(50) not null constraint qa_id_pk primary key,
    OWNER_ID VARCHAR(50) not null constraint qa_OWNER_ID_fk references OWNER(OWNER_ID),
    QA_title VARCHAR(100) NOT NULL,
    QA_content VARCHAR(4000) NOT NULL,
    QA_writeday DATE NOT NULL,
    QA_readnum NUMBER DEFAULT 0,
    QA_pwd VARCHAR(50) NOT NULL
    );

    CREATE SEQUENCE sequence_qa
    START WITH 1
    INCREMENT BY 1;
    
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happymom','������� �ſ�Ȯ�� ����','����� �ſ������� ��� �̷��������?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'cloud','�������� Ȯ�ι���','�������� Ȯ���� ��� �ϳ���?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'any6103','��ݻ�������','��ݻ��������� �ñ��ؿ�',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'flower','����͵�Ϲ���','����� ��Ͽ� ���� �����ϳ���?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happy','�Ʒù���','����ʹ� ��������޳���?',sysdate,0,'1234');

    select * from qa; 
    
create table reply(
    reply_id VARCHAR(50) not null constraint reply_id_pk primary key,
    QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id),
    OWNER_ID VARCHAR(50) not null constraint reply_OWNER_ID_fk references OWNER(OWNER_ID), 
    reply_content VARCHAR(4000) not null,
    reply_writeday DATE not null
    );
    
    CREATE SEQUENCE sequence_reply
    START WITH 1
    INCREMENT BY 1;
    
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','happymom','������� �ſ�Ȯ���� ������ �ϰ��ֽ��ϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','cloud','�������� Ȯ���� �ð����� �޼����� �����帳�ϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','any6103','����� 27000������ �����մϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','flower','����͵���� �����Դϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','happy','�ڻ��� ������ �����մϴ�',sysdate);
    
    select * from reply; 

create table SITTER_review(
    SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,
    SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),
    OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),
    SITTER_review_content VARCHAR(4000) NOT NULL,
    SITTER_review_writeday DATE NOT NULL,
    SITTER_review_grade NUMBER NOT NULL
    );
    
    CREATE SEQUENCE sequence_SITTER_review
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','happymom','���� ģ���ؿ�',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','cloud','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','any6103','���������� �༭ ���Ҿ��',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','flower','���� ������� ���ƿ�',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happy','�츮���� ���ִ����ƿ�',sysdate,4);

    select * from SITTER_review;

create table call(
        call_id VARCHAR(50) not null constraint call_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint call_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint call_SITTER_ID_fk  references SITTER(SITTER_ID),
        call_total_price NUMBER NOT NULL,
        CALL_COMMENT VARCHAR(200) NOT NULL,
        CALL_RESERVATE_START DATE NOT NULL,
        CALL_RESERVATE_END DATE NOT NULL,
        CALL_WRITEDAY DATE NOT NULL,
        CALL_PETCOUNT NUMBER NOT NULL,
        OWNER_APPROVAL VARCHAR(5) NULL
    );
    
    CREATE SEQUENCE sequence_CALL
    START WITH 1
    INCREMENT BY 1;
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom',NULL,30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud',NULL,100000,'Ȱ���մϴ�','2018-07-05','18-07-10','18-06-12',1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103',NULL,40000,'����̿���','18-07-10','18-07-11',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower',NULL,60000,'������ ì���ּ���','18-08-02','18-08-03',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy',NULL,29000,'�ǿܹ躯�Դϴ�','18-06-30','18-07-02',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','goodsitter',30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','bestsitter',30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','kind',30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','happysis',30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','meme',30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
    
    select * from call; 
    
Create table SITTER_REQUEST(
        SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,
        call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),
        OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID)
    );
    
    CREATE SEQUENCE sequence_SITTER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-1','happymom','goodsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-2','cloud','bestsitter');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-3','any6103','kind');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-4','flower','happysis');
    insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-5','happy','meme');

    select * from SITTER_REQUEST; 
    
Create table OWNER_REQUEST(
        OWNER_REQUEST_id VARCHAR(50) not null constraint OWNER_REQUEST_id_pk primary key,
        OWNER_ID VARCHAR(50) not null constraint OWNER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),
        SITTER_ID VARCHAR(50) null constraint OWNER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),
        OWNER_REQUEST_PRICE NUMBER  NOT NULL,
        OWNER_REQUEST_START DATE NOT NULL,
        OWNER_REQUEST_END DATE NOT NULL,
        OWNER_REQUEST_PETCOUNT NUMBER NOT NULL,
        SITTER_APPROVAL VARCHAR(5) NULL
    );
    
    CREATE SEQUENCE sequence_OWNER_REQUEST
    START WITH 1
    INCREMENT BY 1;
    
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','goodsitter',27000,'18-07-02','18-07-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','goodsitter',35000,'18-06-28','18-06-29',2,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','goodsitter',28000,'18-06-30','18-07-01',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','goodsitter',50000,'18-07-02','18-07-05',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','goodsitter',30000,'18-07-02','18-07-03',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','bestsitter',35000,'18-06-28','18-06-29',2,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','kind',28000,'18-06-30','18-07-01',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','happysis',50000,'18-07-02','18-07-05',1,NULL);
    insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','meme',30000,'18-07-02','18-07-03',1,NULL);

    select * from OWNER_REQUEST; 
    
create table OPTIONS(
    OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,
    OPTION_NAME VARCHAR(50) not null 
    );
    
    CREATE SEQUENCE sequence_OPTIONS
    START WITH 1
    INCREMENT BY 1;
    
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��å');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'���');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��ɰ��ɾ�');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ڰ�������');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'����óġ');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'������');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ݷ��߾��°�');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�����ɾ�');
    
    select * from OPTIONS; 

Create table SITTER_OPTION(
    SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,
    SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),
    OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)
    );
    
    CREATE SEQUENCE sequence_SITTER_OPTION
    START WITH 1
    INCREMENT BY 1;
    
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
    
    select * from SITTER_OPTION; 
    

Create table DIARY(
    DAILY_RECORD_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,
    SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),
    OWNER_ID VARCHAR(50) not null constraint DIARY_OWNER_ID_fk references OWNER(OWNER_ID),
    DIARY_TITLE VARCHAR(100) not null,
    DIARY_CONTENT VARCHAR(4000) not null,
    DIARY_WRITEDAY DATE not null,
    DIARY_PWD VARCHAR(50) not null,
    DIARY_FNMAE VARCHAR(50) null,
    DIARY_FSIZE NUMBER null
);

    CREATE SEQUENCE sequence_DIARY
    START WITH 1
    INCREMENT BY 1;
    
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','��å�� �ٳ�Ծ��','źõ��å�� �ٳ�Ծ��',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','cloud','���Ѿ��̿���','������ �����������͸� �ٳ�Ծ��',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'kind','any6103','����� �߽��ϴ�','������ ��û�Ͻ� ����� �߽��ϴ�',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'happysis','flower','������ �ȸԾ��','���� ������ �ʿ��Ѱ� �����ϴ�',SYSDATE,'1234',NULL,NULL);
    insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'meme','happy','���� �� �ȸԾ��','Ȥ�� ���ִ��� ���� �ִ� ���Ͽ� �����Ű���?',SYSDATE,'1234',NULL,NULL);

    select * from DIARY;  

create table SITTING_OPTION(
    SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,
    OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),
    sitting_id VARCHAR(50) not null
    );
    
    CREATE SEQUENCE sequence_SITTING_OPTION
    START WITH 1
    INCREMENT BY 1;
    
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
    
    select * from SITTING_OPTION; 
    
create table ADMIN( 
    ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,
    ADMIN_PASSWORD VARCHAR(20) not null
);

    INSERT INTO ADMIN VALUES ('ADMIN','1234');
    
    select * from ADMIN; 
    
create table NOTICE( 
    NOTICE_ID VARCHAR(50) not null constraint NOTICE_ID_pk primary key,
    NOTICE_TITLE VARCHAR(100) not null,
    NOTICE_CONTENT VARCHAR(4000) not null,
    NOTICE_WRITEDAY DATE not null,
    NOTICE_READNUM NUMBER not null,
    NOTICE_FNAME VARCHAR(50) null,
    NOTICE_FSIZE NUMBER null
   );
   
    CREATE SEQUENCE sequence_NOTICE_ID
    START WITH 1
    INCREMENT BY 1;
    
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������1','��������1',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������2','��������2',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������3','��������3',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������4','��������4',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������5','��������5',SYSDATE,0,NULL,NULL);

    select * from NOTICE;   
    
Create table SITTER_IMG(
    SITTER_IMG_ID VARCHAR(50) not null constraint SITTER_IMG_ID_pk primary key,
    SITTER_ID VARCHAR(50) not null constraint SITTER_IMG_SITTER_ID_fk  references SITTER(SITTER_ID),
    Sitter_img_name VARCHAR(50) null,
    Sitter_Img_URL VARCHAR(50) null
    );
    
    CREATE SEQUENCE sequence_SITTER_IMG_ID
    START WITH 1
    INCREMENT BY 1;
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'goodsitter',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'bestsitter',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'kind',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'happysis',null,null);
    
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    insert into SITTER_IMG VALUES ('SITTER_IMG_ID-'||sequence_SITTER_IMG_ID.NEXTVAL,'meme',null,null);
    
    select * from sitter_img;

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
    
    insert into AUTHORITIES VALUES ('ADMIN','ADMIN','1234','������');
    
    insert into AUTHORITIES VALUES ('happymom','OWNER','1234','������');
    insert into AUTHORITIES VALUES ('cloud','OWNER','1234','�����');
    insert into AUTHORITIES VALUES ('any6103','OWNER','1234','��ÿ�');
    insert into AUTHORITIES VALUES ('flower','OWNER','1234','������');
    insert into AUTHORITIES VALUES ('happy','OWNER','1234','���Ѻ�');
    
    insert into AUTHORITIES VALUES ('goodsitter','SITTER','1234','��ȿ��');
    insert into AUTHORITIES VALUES ('bestsitter','SITTER','1234','�ں���');
    insert into AUTHORITIES VALUES ('kind','SITTER','1234','�ڹο�');
    insert into AUTHORITIES VALUES ('happysis','SITTER','1234','�ڼ���');
    insert into AUTHORITIES VALUES ('meme','SITTER','1234','����');


COMMIT;

    
