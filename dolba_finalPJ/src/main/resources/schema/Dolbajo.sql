--Dolbajo
--system���� ����
--������ �����
--create user Dolbajo identified by 1234;
--���Ѻο��ϱ� 
--grant connect, resource to Dolbajo;
--����
--conn Dolbajo/1234;

--OWNER
create table OWNER(
    OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,--����id
    OWNER_PASSWORD VARCHAR(20) NOT NULL, --��й�ȣ
    OWNER_NAME VARCHAR(20) NOT NULL, --�̸�
    OWNER_ADDR VARCHAR(200) NOT NULL, --�ּ�
    OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL, --���ּ�
    OWNER_PHONE VARCHAR(20) NOT NULL, --�ڵ���
    OWNER_EMAIL VARCHAR(40) NOT NULL --�̸���    
);         
--select * from OWNER;   
--DROP table OWNER;

insert into OWNER values('happymom','1234','������','��⵵','������','000-000-0000','abcd@naver.com');
insert into OWNER values('cloud','1234','�����','��⵵','����','000-000-0000','defg@naver.com');
insert into OWNER values('any6103','1234','��ÿ�','����','����','000-000-0000','hijk@naver.com');
insert into OWNER values('flower','1234','������','�λ�','����','000-000-0000','lmnop@naver.com');
insert into OWNER values('happy','1234','���Ѻ�','����','�б���','000-000-0000','qrst@naver.com');

--SITTER
create table SITTER(
    SITTER_ID VARCHAR(50) not null constraint SITTER_ID_pk primary key,--�����id
    SITTER_PASSWORD VARCHAR(20) NOT NULL, --��й�ȣ
    SITTER_NAME VARCHAR(20) NOT NULL, --�̸�
    SITTER_PHONE VARCHAR(20) NOT NULL, --�ڵ���
    SITTER_EMAIL VARCHAR(40) NOT NULL, --�̸���    
    SITTER_ADDR VARCHAR(200) NOT NULL, --�ּ�
    SITTER_DETAIL_ADDR VARCHAR(100) NOT NULL, --���ּ�
    SITTER_INTRODUCE VARCHAR(200) NOT NULL, --�ڱ�Ұ�
    SITTER_GRADE NUMBER NOT NULL, --����
    SITTER_CERTIFICATION VARCHAR(50) NULL, --�ڰ���
    SITTER_PET_AMOUNT NUMBER NOT NULL, --������ ������
    SITTER_BASIS_PRICE NUMBER NOT NULL, --�⺻����
    SITTER_PERMIT VARCHAR(5) NULL--�հݿ���
);
        
--select * from SITTER;    
--DROP table SITTER;

insert into SITTER values('sitter1','1234','�̸�1','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 901ȣ','�ȳ��ϼ���','5',null,1,10000,'O');
insert into SITTER values('sitter2','1234','�̸�2','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 902ȣ','�ȳ��ϼ���','5',null,1,20000,'O');
insert into SITTER values('sitter3','1234','�̸�3','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 903ȣ','�ȳ��ϼ���','5',null,1,30000,'O');
insert into SITTER values('sitter4','1234','�̸�4','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 904ȣ','�ȳ��ϼ���','5',null,1,40000,'O');
insert into SITTER values('sitter5','1234','�̸�5','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 905ȣ','�ȳ��ϼ���','5',null,1,50000,'O');
insert into SITTER values('sitter6','1234','�̸�6','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 906ȣ','�ȳ��ϼ���','5',null,1,60000,'O');
insert into SITTER values('sitter7','1234','�̸�7','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 907ȣ','�ȳ��ϼ���','5',null,1,70000,'O');
insert into SITTER values('sitter8','1234','�̸�8','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 908ȣ','�ȳ��ϼ���','5',null,1,80000,'O');
insert into SITTER values('sitter9','1234','�̸�9','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 909ȣ','�ȳ��ϼ���','5',null,1,90000,'O');
insert into SITTER values('sitter10','1234','�̸�10','000-000-0000','abcd@naver.com','��⵵ ������ ���뱸 �ϵ� ������ 134', '3010�� 910ȣ','�ȳ��ϼ���','5',null,1,24000,'O');



insert into SITTER values('goodsitter','1234','������','000-000-0000','abcd@naver.com','��⵵', '�ź���','�ȳ��ϼ���','5',null,1,50000,null);
insert into SITTER values('bestsitter','1234','��ÿ�','000-000-0000','abdd@naver.com','��⵵', '������','�����̳�ġ��','5',null,0,50000,null);
insert into SITTER values('kind','1234','�����','000-000-0000','efg@naver.com','��⵵', '����','�� ����ó��','0',null,1,27000,null);
insert into SITTER values('happysis','1234','���Ѻ�','000-000-0000','happy@naver.com','������', '����','�ðܸ��ּ���','1',null,1,30000,null);
insert into SITTER values('meme','1234','������','000-000-0000','hijk@naver.com','�����', '�����','�ְ��Ǽ���','3',null,1,40000,null);

--pet
create table pet(
    pet_id VARCHAR(50) not null constraint pet_id_pk primary key,--��id
    OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),--����id 
    pet_species VARCHAR(20) not null ,--��
    pet_size VARCHAR(10) not null,--����ũ�� (��/��/��)
    pet_liness VARCHAR(50) not null, --������������ �ۼ�
    pet_weight NUMBER not null,--������
    pet_gender VARCHAR(5) not null, --����
    pet_age NUMBER not null ,--����
    pet_fname VARCHAR(50) null ,--�����̸�
    pet_fsize NUMBER null --����ũ��
);
--select * from pet; 
--alter table pet rename column petd_id  to  pet_id;
--DROP table pet;

CREATE SEQUENCE sequence_pet
START WITH 1
INCREMENT BY 1;

--SELECT sequence_pet.NEXTVAL FROM DUAL;
--SELECT sequence_pet.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_pet;

insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happymom','Ǫ��','��','����',3,'��',13,null, null);
insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'cloud','Ǫ��','��','����',3,'��',1,null, null);
insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'any6103','Ǫ��','��','����',4,'��',1,null, null);
insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'flower','����','��','����',6,'��',3,null, null);
insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happy','��ƼǪ','��','����',4,'��',2,null, null);

--review
create table review(
    review_id VARCHAR(20) not null constraint review_id_pk primary key,--����id
    OWNER_ID VARCHAR(50) not null constraint review_OWNER_ID_fk references OWNER(OWNER_ID),--����id -- on delete cascade�θ��ڵ尡 ������ �� �ڽ� ���ڵ尡 �Բ� ����
    review_title VARCHAR(100) NOT NULL,--����
    review_content VARCHAR(4000) NOT NULL,--����
    review_readnum NUMBER DEFAULT 0,--��ȸ��
    review_writeday DATE NOT NULL,--�ۼ���
    review_pwd VARCHAR(50) NOT NULL--�Խñ� ��й�ȣ
);
--select * from review; 
--DROP table review;

CREATE SEQUENCE sequence_review
START WITH 1
INCREMENT BY 1;

--SELECT sequence_review.NEXTVAL FROM DUAL;
--SELECT sequence_review.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_review;

insert into review values('review_id-'||sequence_review.NEXTVAL,'happymom','�������׿�','���ǰ� �����ؿ�',0,sysdate,'1234');
insert into review values('review_id-'||sequence_review.NEXTVAL,'cloud','�����̰������ؿ�','���׿�',0,sysdate,'1234');
insert into review values('review_id-'||sequence_review.NEXTVAL,'any6103','����� ���ƿ�','�츮�Ʊ� �Ƚ��ϰ� �ñ�� ������ ���ƿ�',0,sysdate,'1234');
insert into review values('review_id-'||sequence_review.NEXTVAL,'flower','�����̿��Ұ� ���ƿ�','������ ���̳׿�',0,sysdate,'1234');
insert into review values('review_id-'||sequence_review.NEXTVAL,'happy','���� ģ���ؿ�','�ֱⰡ�����ؿ�',0,sysdate,'1234');

--QA
create table QA(
    QA_id VARCHAR(50) not null constraint qa_id_pk primary key,--QAid
    OWNER_ID VARCHAR(50) not null constraint qa_OWNER_ID_fk references OWNER(OWNER_ID),--����id 
    QA_title VARCHAR(100) NOT NULL,--����
    QA_content VARCHAR(4000) NOT NULL,--����
    QA_writeday DATE NOT NULL,--�ۼ���
    QA_readnum NUMBER DEFAULT 0,--��ȸ��
    QA_pwd VARCHAR(50) NOT NULL--�Խñ� ��й�ȣ
);
--select * from qa; 
--DROP table qa;

CREATE SEQUENCE sequence_qa
START WITH 1
INCREMENT BY 1;

--SELECT sequence_qa.NEXTVAL FROM DUAL;
--SELECT sequence_qa.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_qa;

insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happymom','������� �ſ�Ȯ�� ����','����� �ſ������� ��� �̷��������?',sysdate,0,'1234');
insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'cloud','�������� Ȯ�ι���','�������� Ȯ���� ��� �ϳ���?',sysdate,0,'1234');
insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'any6103','��ݻ�������','��ݻ��������� �ñ��ؿ�',sysdate,0,'1234');
insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'flower','����͵�Ϲ���','����� ��Ͽ� ���� �����ϳ���?',sysdate,0,'1234');
insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happy','�Ʒù���','����ʹ� ��������޳���?',sysdate,0,'1234');


--reply
create table reply(
    reply_id VARCHAR(50) not null constraint reply_id_pk primary key,--���id
    QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id), --QAid
    OWNER_ID VARCHAR(50) not null constraint reply_OWNER_ID_fk references OWNER(OWNER_ID),--����id 
    reply_content VARCHAR(4000) not null, --��۳���
    reply_writeday DATE not null -- �ۼ���
);
--select * from reply; 
--select * from qa;
--DROP table reply;

CREATE SEQUENCE sequence_reply
START WITH 1
INCREMENT BY 1;

--SELECT sequence_reply.NEXTVAL FROM DUAL;
--SELECT sequence_reply.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_reply;

insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','happymom','������� �ſ�Ȯ���� ������ �ϰ��ֽ��ϴ�',sysdate);
insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','cloud','�������� Ȯ���� �ð����� �޼����� �����帳�ϴ�',sysdate);
insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','any6103','����� 27000������ �����մϴ�',sysdate);
insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','flower','����͵���� �����Դϴ�',sysdate);
insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','happy','�ڻ��� ������ �����մϴ�',sysdate);

--SITTER_review
create table SITTER_review(
    SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,--������ı� id
    SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    SITTER_review_content VARCHAR(4000) NOT NULL,--����
    SITTER_review_writeday DATE NOT NULL,--�ۼ���
    SITTER_review_grade NUMBER NOT NULL--����
);
--select * from SITTER_review; 

--DROP table SITTER_review;

CREATE SEQUENCE sequence_SITTER_review
START WITH 1
INCREMENT BY 1;

--SELECT sequence_review.NEXTVAL FROM DUAL;
--SELECT sequence_review.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_SITTER_review;

insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','happymom','���� ģ���ؿ�',sysdate,5);
insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','cloud','�ϰ��ñ�� �־��',sysdate,4);
insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','any6103','���������� �༭ ���Ҿ��',sysdate,3);
insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','flower','���� ������� ���ƿ�',sysdate,5);
insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happy','�츮���� ���ִ����ƿ�',sysdate,4);

--call
create table call(
    call_id VARCHAR(50) not null constraint call_id_pk primary key,--�θ���id
    OWNER_ID VARCHAR(50) not null constraint call_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    SITTER_ID VARCHAR(50) null constraint call_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    call_total_price NUMBER NOT NULL,--�Ѱ���
    CALL_COMMENT VARCHAR(200) NOT NULL,--�ڸ�Ʈ
    CALL_RESERVATE_START DATE NOT NULL,--���������
    CALL_RESERVATE_END DATE NOT NULL,--����������
    CALL_WRITEDAY DATE NOT NULL,--�ۼ���
    CALL_PETCOUNT NUMBER NOT NULL,--�� ������ 
    OWNER_APPROVAL VARCHAR(5) NULL--���ֽ��ο���
);
--select * from call; 
--DROP table call;


CREATE SEQUENCE sequence_CALL
START WITH 1
INCREMENT BY 1;

--SELECT sequence_CALL.NEXTVAL FROM DUAL;
--SELECT sequence_CALL.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_CALL;
--truncate table CALL;

insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom',NULL,30000,'�����մϴ�','18-07-02','18-07-03',sysdate,1,NULL);
insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud',NULL,100000,'Ȱ���մϴ�','2018-07-05','18-07-10','18-06-12',1,NULL);
insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103',NULL,40000,'����̿���','18-07-10','18-07-11',sysdate,1,NULL);
insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower',NULL,60000,'������ ì���ּ���','18-08-02','18-08-03',sysdate,2,NULL);
insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy',NULL,29000,'�ǿܹ躯�Դϴ�','18-06-30','18-07-02',sysdate,1,NULL);

--Delete CALL where OWNER_ID ='happymom';
--truncate table CALL ;  

--SITTER_REQUEST
Create table SITTER_REQUEST(
    SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,--����Ͱ� ��û
    call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),--�θ���id
    OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID)--�����id
);
--select * from SITTER_REQUEST; 
--select * from call; 
--DROP table SITTER_REQUEST;

CREATE SEQUENCE sequence_SITTER_REQUEST
START WITH 1
INCREMENT BY 1;

--SELECT sequence_SITTER_REQUEST.NEXTVAL FROM DUAL;
--SELECT sequence_SITTER_REQUEST.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_SITTER_REQUEST;

insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-1','happymom','goodsitter');
insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-2','cloud','bestsitter');
insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-3','any6103','kind');
insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-4','flower','happysis');
insert into SITTER_REQUEST values('SITTER_REQUEST_id-'||sequence_SITTER_REQUEST.NEXTVAL,'call_id-5','happy','meme');

--OWNER_REQUEST
Create table OWNER_REQUEST(
    OWNER_REQUEST_id VARCHAR(50) not null constraint OWNER_REQUEST_id_pk primary key,--���ְ� ��û ID
    OWNER_ID VARCHAR(50) not null constraint OWNER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    SITTER_ID VARCHAR(50) null constraint OWNER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    OWNER_REQUEST_PRICE NUMBER  NOT NULL,--�Ѱ���
    OWNER_REQUEST_START DATE NOT NULL,--���������
    OWNER_REQUEST_END DATE NOT NULL,--����������
    OWNER_REQUEST_PETCOUNT NUMBER NOT NULL,--�긶����
    SITTER_APPROVAL VARCHAR(5) NULL--����ͽ��ο���
);
--select * from OWNER_REQUEST; 
--DROP table OWNER_REQUEST;

CREATE SEQUENCE sequence_OWNER_REQUEST
START WITH 1
INCREMENT BY 1;

--SELECT sequence_OWNER_REQUEST.NEXTVAL FROM DUAL;
--SELECT sequence_OWNER_REQUEST.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_OWNER_REQUEST;

insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happymom','goodsitter',27000,'18-07-02','18-07-03',1,NULL);
insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'cloud','bestsitter',35000,'18-06-28','18-06-29',2,NULL);
insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'any6103','kind',28000,'18-06-30','18-07-01',1,NULL);
insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'flower','happysis',50000,'18-07-02','18-07-05',1,NULL);
insert into OWNER_REQUEST values('OWNER_REQUEST_id-'||sequence_OWNER_REQUEST.NEXTVAL,'happy','meme',30000,'18-07-02','18-07-03',1,NULL);

--OPTIONS
create table OPTIONS( --OPTION���δ� ���̺� ���� �Ұ� (�����)
    OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,--�ɼ�id
    OPTION_NAME VARCHAR(50) not null --���
);
    
select * from OPTIONS;   
--DROP table OPTIONS;

CREATE SEQUENCE sequence_OPTIONS
START WITH 1
INCREMENT BY 1;

--SELECT sequence_OPTIONS.NEXTVAL FROM DUAL;
--SELECT sequence_OPTIONS.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_OPTIONS;

INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��å');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'���');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��ɰ��ɾ�');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ڰ�������');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'����óġ');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'������');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ݷ��߾��°�');
INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�����ɾ�');

--SITTER_OPTION
Create table SITTER_OPTION(
    SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,--����Ϳɼ�ID
    SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)--�ɼ�id
);
 select * from SITTER_OPTION;   
--select * from OPTIONs; 
--DROP table SITTER_OPTION;

CREATE SEQUENCE sequence_SITTER_OPTION
START WITH 1
INCREMENT BY 1;

--SELECT sequence_SITTER_OPTION.NEXTVAL FROM DUAL;
--SELECT sequence_SITTER_OPTION.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_SITTER_OPTION;

insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter1','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-3');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-4');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter2','OPTION_ID-5');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter3','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter3','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter3','OPTION_ID-6');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter4','OPTION_ID-4');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter5','OPTION_ID-5');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter5','OPTION_ID-6');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter5','OPTION_ID-7');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter5','OPTION_ID-8');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-3');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-4');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-5');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-6');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-7');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter6','OPTION_ID-8');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter7','OPTION_ID-4');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-5');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-6');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-7');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter8','OPTION_ID-8');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter9','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter9','OPTION_ID-7');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-1');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-2');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-3');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-4');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-5');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-6');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-7');
insert into SITTER_OPTION values('SITTER_OPTION_id-'||sequence_SITTER_OPTION.NEXTVAL,'sitter10','OPTION_ID-8');



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
   
--DIARY
Create table DIARY(
    DAILY_RECORD_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,--���� ID
    SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    OWNER_ID VARCHAR(50) not null constraint DIARY_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    DIARY_TITLE VARCHAR(100) not null ,--����
    DIARY_CONTENT VARCHAR(4000) not null ,--����
    DIARY_WRITEDAY DATE not null ,--�ۼ���
    DIARY_PWD VARCHAR(50) not null ,--�Խñ� ��й�ȣ
    DIARY_FNMAE VARCHAR(50) null ,--÷�λ����̸�
    DIARY_FSIZE NUMBER null --÷�λ���ũ��
);
select * from DIARY; 
--DROP table DIARY;

CREATE SEQUENCE sequence_DIARY
START WITH 1
INCREMENT BY 1;

--SELECT sequence_DIARY.NEXTVAL FROM DUAL;
--SELECT sequence_DIARY.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_DIARY;

insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','��å�� �ٳ�Ծ��','źõ��å�� �ٳ�Ծ��',SYSDATE,'1234',NULL,NULL);
insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','cloud','���Ѿ��̿���','������ �����������͸� �ٳ�Ծ��',SYSDATE,'1234',NULL,NULL);
insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'kind','any6103','����� �߽��ϴ�','������ ��û�Ͻ� ����� �߽��ϴ�',SYSDATE,'1234',NULL,NULL);
insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'happysis','flower','������ �ȸԾ��','���� ������ �ʿ��Ѱ� �����ϴ�',SYSDATE,'1234',NULL,NULL);
insert into DIARY values('DAILY_RECORD_ID-'||sequence_DIARY.NEXTVAL,'meme','happy','���� �� �ȸԾ��','Ȥ�� ���ִ��� ���� �ִ� ���Ͽ� �����Ű���?',SYSDATE,'1234',NULL,NULL);


--SITTING_OPTION
create table SITTING_OPTION(
    SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,--����ÿɼ�id
    OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),--�ɼ�id
    REQUEST_ID VARCHAR(50) not null--�θ��� �ñ�� ID
);

select * from SITTING_OPTION;   
select * from OPTIONS;
select * from owner_request;
select * from call;
--DROP table SITTING_OPTION;

CREATE SEQUENCE sequence_SITTING_OPTION
START WITH 1
INCREMENT BY 1;

--SELECT sequence_SITTING_OPTION.NEXTVAL FROM DUAL;
--SELECT sequence_SITTING_OPTION.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_SITTING_OPTION;

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

--ADMIN
create table ADMIN( 
    ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,--������id
    ADMIN_PASSWORD VARCHAR(20) not null--��й�ȣ
   );
select * from ADMIN;   
--DROP table ADMIN;
INSERT INTO ADMIN VALUES ('ADMIN','1234');
INSERT INTO ADMIN VALUES ('ADMIN2','1234');

--NOTICE
create table NOTICE( 
    NOTICE_ID VARCHAR(50) not null constraint NOTICE_ID_pk primary key,--��������id
    NOTICE_TITLE VARCHAR(100) not null,--����
    NOTICE_CONTENT VARCHAR(4000) not null,--����
    NOTICE_WRITEDAY DATE not null,--�ۼ���
    NOTICE_READNUM NUMBER not null,--��ȸ��
    NOTICE_FNAME VARCHAR(50) null,--÷�λ����̸�
    NOTICE_FSIZE NUMBER null--÷�λ���ũ��
   );
--select * from NOTICE;   
--DROP table NOTICE;

CREATE SEQUENCE sequence_NOTICE_ID
START WITH 1
INCREMENT BY 1;

--SELECT sequence_NOTICE_ID.NEXTVAL FROM DUAL;
--SELECT sequence_NOTICE_ID.CURRVAL FROM DUAL;
--DROP SEQUENCE sequence_NOTICE_ID;

INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������1','��������1',SYSDATE,0,NULL,NULL);
INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������2','��������2',SYSDATE,0,NULL,NULL);
INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������3','��������3',SYSDATE,0,NULL,NULL);
INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������4','��������4',SYSDATE,0,NULL,NULL);
INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������5','��������5',SYSDATE,0,NULL,NULL);

COMMIT
--ROLLBACK ;