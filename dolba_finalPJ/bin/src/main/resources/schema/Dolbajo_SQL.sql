--Dolbajo
--system���� ����
--������ �����
--create user Dolbajo identified by 1234;
--���Ѻο��ϱ� 
--grant connect, resource to Dolbajo;
--����
--conn Dolbajo/1234;

--OWNER

    --DROP table OWNER;   
    create table OWNER(
        OWNER_ID VARCHAR(50) not null constraint OWNER_ID_pk primary key,--����id
        OWNER_PASSWORD VARCHAR(20) NOT NULL, --��й�ȣ
        OWNER_NAME VARCHAR(20) NOT NULL, --�̸�
        OWNER_ADDR VARCHAR(200) NOT NULL, --�ּ�
        OWNER_DETAIL_ADDR VARCHAR(100) NOT NULL, --���ּ�
        OWNER_PHONE VARCHAR(20) NOT NULL, --�ڵ���
        OWNER_EMAIL VARCHAR(40) NOT NULL, --�̸���
        OWNER_fname VARCHAR(50) NULL,--�����̹���
        OWNER_gender VARCHAR(5) NOT NULL --OWNER����
    );         
    --select * from OWNER;   
    
    insert into OWNER values('happymom','1234','������','��⵵ ������ �д籸 �Ǳ����� 235',' ����ġ������ ����','000-000-0000','abcd@naver.com','IMG_01.jpg','��');
    insert into OWNER values('cloud','1234','�����̾ƺ�','��� ������ �д籸 ������ 145','null','000-000-0000','defg@naver.com','IMG_02.jpg','��');
    insert into OWNER values('any6103','1234','������','��⵵ ������ �д籸 ������� 601','null','000-000-0000','hijk@naver.com','IMG_03.jpg','��');
    insert into OWNER values('flower','1234','�̷縮','���� ������ �б�����12�� 46','null','000-000-0000','lmnop@naver.com','IMG_04.jpg','��');
    insert into OWNER values('happy','1234','���ƶ�','����Ư���� ������ �������162�� 36 �������','null','000-000-0000','qrst@naver.com','IMG_05.jpg','��');
    
    insert into OWNER values('jang','1234','������','��⵵ ������ �д籸 �Ǳ����� 160','null','000-000-0000','jang@naver.com','IMG_06.jpg','��');
    insert into OWNER values('baek','1234','�����','��� ������ �д籸 ���Ǳ���52���� 25-18','null','000-000-0000','baek@naver.com','IMG_07.jpg','��');
    insert into OWNER values('yeun','1234','��ÿ�','��⵵ ������ �д籸 �Ǳ����� 236','null','000-000-0000','yeun@naver.com','IMG_08.jpg','��');
    insert into OWNER values('jun','1234','������','��� ������ �д籸 �����Ϸ� 239 ','null','000-000-0000','jun@naver.com','IMG_09.jpg','��');
    insert into OWNER values('han','1234','���Ѻ�','��⵵ ������ �д籸 ���� �Ǳ����� 226����','null','000-000-0000','han@naver.com','IMG_10.jpg','��');

--SITTER

    --DROP table SITTER;
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
        SITTER_PERMIT VARCHAR(5) NULL,--�հݿ���
        SITTER_fname VARCHAR(50) NULL,--�����̹���
        Scertification_fname  VARCHAR(50) NULL,--�ڰ���
        Sitter_gender VARCHAR(5) NOT NULL --���� ����       
    );        
    --select * from SITTER;    

    --alter table SITTER  add (Sitter_gender VARCHAR(5) NOT NULL); --���� ����
    
    insert into SITTER values('goodsitter','1234','��ȿ��','000-000-0000','abcd@naver.com','��⵵ ������ �д籸 �Ǳ����� 235', '����ġ������ ����','�ȳ��ϼ���','5',null,1,50000,null,'IMG_11.jpg',null,'��');
    insert into SITTER values('bestsitter','1234','�ں���','000-000-0000','abdd@naver.com','��⵵ ������ �д籸 ���� �Ǳ����� 226���� 16', 'null','�����̳�ġ��','5',null,0,50000,null,'IMG_12.jpg',null,'��');
    insert into SITTER values('kind','1234','�ڹο�','000-000-0000','efg@naver.com','��� ������ �д籸 �����Ϸ� 239', 'null','�� ����ó��','0',null,1,27000,null,'IMG_13.jpg',null,'��');
    insert into SITTER values('happysis','1234','�ڼ���','000-000-0000','happy@naver.com','��⵵ ������ �д籸 ����Ǳ��� 660 �������̽�1', 'null','�ðܸ��ּ���','1',null,1,30000,null,'IMG_14.jpg',null,'��');
    insert into SITTER values('meme','1234','����','000-000-0000','hijk@naver.com','��� ������ �д籸 ���Ǳ���52���� 25-18', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_15.jpg',null,'��');
    
    insert into SITTER values('woo','1234','����','000-000-0000','woo@naver.com','��� ������ �д籸 �Ǳ�����192����', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_16.jpg',null,'��');
    insert into SITTER values('top','1234','ž','000-000-0000','top@naver.com','��⵵ ������ �д籸 �Ǳ����� 160', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_17.jpg',null,'��');
    insert into SITTER values('kang','1234','������','000-000-0000','kang@naver.com','���� ������ �б�����12�� 46', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_18.jpg',null,'��');
    insert into SITTER values('iu','1234','������','000-000-0000','iu@naver.com','����Ư���� ������ �������162�� 36 �������', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_19.jpg',null,'��');
    insert into SITTER values('cl','1234','����','000-000-0000','cl@naver.com','��⵵ ������ �д籸 ������� 601', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_20.jpg',null,'��');
    
    insert into SITTER values('jiso','1234','����','000-000-0000','jiso@naver.com','�Ǳ�����10����', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_21.jpg',null,'��');
    insert into SITTER values('jani','1234','����','000-000-0000','jani@naver.com','���� ������ ������11�� 5', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_22.jpg',null,'��');
    insert into SITTER values('rose','1234','����','000-000-0000','rose@naver.com','���� ������ �������160�� 29', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_23.jpg',null,'��');
    insert into SITTER values('lisa','1234','����','000-000-0000','lisa@naver.com','���� ������ �б�����10�� 30-3', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_24.jpg',null,'��');
    insert into SITTER values('hi','1234','������','000-000-0000','hi@naver.com','����Ư���� ������ ������12�� 7', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_25.jpg',null,'��');
    
    insert into SITTER values('suhyun','1234','�̼���','000-000-0000','suhyun@naver.com','���� ��걸 ������60�� 22 ', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_26.jpg',null,'��');
    insert into SITTER values('hee','1234','������','000-000-0000','hee@naver.com','����Ư���� ��걸 ���¿���15�� 1 ', '2��','�ְ��Ǽ���','3',null,1,40000,null,'IMG_27.jpg',null,'��');
    insert into SITTER values('rm','1234','������','000-000-0000','rm@naver.com','����Ư���� ��걸 ���¿���27���� 10', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_28.jpg',null,'��');
    insert into SITTER values('sul','1234','����','000-000-0000','sul@naver.com','����Ư���� ��걸 ���¿��� 136-13', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_29.jpg',null,'��');
    insert into SITTER values('kyung','1234','������','000-000-0000','kyung@naver.com','����Ư���� ��걸 ���¿���27���� 52 ', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_30.jpg',null,'��');
    
    insert into SITTER values('jangh','1234','����','000-000-0000','jangh@naver.com','����Ư���� ��걸 ���¿���27���� 26 ', 'null','�ְ��Ǽ���','3',null,1,40000,null,'IMG_31.jpg',null,'��');

--pet

    --DROP table pet;  
    create table pet(
        pet_id VARCHAR(50) not null constraint pet_id_pk primary key,--��id
        OWNER_ID VARCHAR(50) not null constraint pet_OWNER_ID_fk references OWNER(OWNER_ID),--����id 
        PET_NAME VARCHAR(20) NOT NULL, --�̸�
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
    --select * from OWNER; 
    --alter table pet rename column petd_id  to  pet_id;
    
    --DROP SEQUENCE sequence_pet;
    CREATE SEQUENCE sequence_pet
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_pet.NEXTVAL FROM DUAL;
    --SELECT sequence_pet.CURRVAL FROM DUAL;
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happymom','����','Ǫ��','��','����',3,'��',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'cloud','������','Ǫ��','��','����',3,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'any6103','�ɴ���','Ǫ��','��','����',4,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'flower','����','����','��','����',6,'��',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'happy','�ٷ�','��ƼǪ','��','����',4,'��',2,null, null);
    
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'jang','�κ�','��Ƽ��','��','����',3,'��',13,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'baek','�ٴ�','����','��','����',3,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'yeun','ö��','��������','��','����',4,'��',1,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'jun','ö��','����','��','����',6,'��',3,null, null);
    insert into pet values('pet_id-'||sequence_pet.NEXTVAL,'han','����','���','��','����',4,'��',2,null, null);

--review

    --DROP table review;
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

    --DROP SEQUENCE sequence_review;
    CREATE SEQUENCE sequence_review
    START WITH 1
    INCREMENT BY 1;
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;  
    
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happymom','�������׿�','���ǰ� �����ؿ�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'cloud','�����̰������ؿ�','���׿�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'any6103','����� ���ƿ�','�츮�Ʊ� �Ƚ��ϰ� �ñ�� ������ ���ƿ�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'flower','�����̿��Ұ� ���ƿ�','������ ���̳׿�',0,sysdate,'1234');
    insert into review values('review_id-'||sequence_review.NEXTVAL,'happy','���� ģ���ؿ�','�ֱⰡ�����ؿ�',0,sysdate,'1234');

--QA

    --DROP table qa;
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
    
    --DROP SEQUENCE sequence_qa;
    CREATE SEQUENCE sequence_qa
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_qa.NEXTVAL FROM DUAL;
    --SELECT sequence_qa.CURRVAL FROM DUAL;

    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happymom','������� �ſ�Ȯ�� ����','����� �ſ������� ��� �̷��������?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'cloud','�������� Ȯ�ι���','�������� Ȯ���� ��� �ϳ���?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'any6103','��ݻ�������','��ݻ��������� �ñ��ؿ�',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'flower','����͵�Ϲ���','����� ��Ͽ� ���� �����ϳ���?',sysdate,0,'1234');
    insert into qa values('QA_id-'||sequence_qa.NEXTVAL,'happy','�Ʒù���','����ʹ� ��������޳���?',sysdate,0,'1234');

--reply

    --DROP table reply;
    create table reply(
        reply_id VARCHAR(50) not null constraint reply_id_pk primary key,--���id
        QA_id VARCHAR(50) not null constraint  reply_qa_id_fk references QA(QA_id), --QAid
        OWNER_ID VARCHAR(50) not null constraint reply_OWNER_ID_fk references OWNER(OWNER_ID),--����id 
        reply_content VARCHAR(4000) not null, --��۳���
        reply_writeday DATE not null -- �ۼ���
    );
    --select * from reply; 
    --select * from qa;
    
    --DROP SEQUENCE sequence_reply;
    CREATE SEQUENCE sequence_reply
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_reply.NEXTVAL FROM DUAL;
    --SELECT sequence_reply.CURRVAL FROM DUAL;  
    
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-1','happymom','������� �ſ�Ȯ���� ������ �ϰ��ֽ��ϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-2','cloud','�������� Ȯ���� �ð����� �޼����� �����帳�ϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-3','any6103','����� 27000������ �����մϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-4','flower','����͵���� �����Դϴ�',sysdate);
    insert into reply values('reply_id-'||sequence_reply.NEXTVAL,'QA_id-5','happy','�ڻ��� ������ �����մϴ�',sysdate);

--SITTER_review

    --DROP table SITTER_review;
    create table SITTER_review(
        SITTER_review_id VARCHAR(50) not null constraint SITTER_review_id_pk primary key,--������ı� id
        SITTER_ID VARCHAR(50) not null constraint SITTER_review_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
        OWNER_ID VARCHAR(50) not null constraint SITTER_review_OWNER_ID_fk references OWNER(OWNER_ID),--����id
        SITTER_review_content VARCHAR(4000) NOT NULL,--����
        SITTER_review_writeday DATE NOT NULL,--�ۼ���
        SITTER_review_grade NUMBER NOT NULL--����
    );
    --select * from SITTER_review; 

    --DROP SEQUENCE sequence_SITTER_review;
    CREATE SEQUENCE sequence_SITTER_review
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_review.NEXTVAL FROM DUAL;
    --SELECT sequence_review.CURRVAL FROM DUAL;

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','happymom','���� ģ���ؿ�',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','cloud',' ���̶� �� ������',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'goodsitter','any6103','��å�� ���� �����ּ���',sysdate,5);    
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','happymom','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','flower','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'bestsitter','happy','���̰� �����ؿ�',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','happymom','���������� �༭ ���Ҿ��',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','baek','���� ģ���ؿ�',sysdate,3);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kind','yeun','��ó���� ����ؿ�',sysdate,3);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','happymom','���� ������� ���ƿ�',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','jang','���������� �༭ ���Ҿ��',sysdate,5);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'happysis','flower','���̰� �����ؿ�',sysdate,5);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'meme','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'woo','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'top','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);

    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kang','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'iu','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'cl','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jiso','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jani','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rose','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'lisa','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hi','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'suhyun','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'hee','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'rm','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'sul','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'jangh','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happymom','���̶� �� ������',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','yeun','�ϰ�ñ�� �־��',sysdate,4);
    insert into SITTER_review values('SITTER_review_id-'||sequence_SITTER_review.NEXTVAL,'kyung','happy','������ ���¸� ���÷� �����༭ ���Ҿ��',sysdate,4);
    
--OPTIONS

    --DROP table OPTIONS;
    create table OPTIONS( --OPTION���δ� ���̺� ���� �Ұ� (�����)
        OPTION_ID VARCHAR(50) not null constraint OPTION_ID_pk primary key,--�ɼ�id
        OPTION_NAME VARCHAR(50) not null --���
    );
    --select * from OPTIONS;   
    
    --DROP SEQUENCE sequence_OPTIONS; 
    CREATE SEQUENCE sequence_OPTIONS
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_OPTIONS.NEXTVAL FROM DUAL;
    --SELECT sequence_OPTIONS.CURRVAL FROM DUAL;

    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��å');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'���');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'��ɰ��ɾ�');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ڰ�������');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'����óġ');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'������');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�ݷ��߾��°�');
    INSERT INTO OPTIONS VALUES ('OPTION_ID-'||sequence_OPTIONS.NEXTVAL,'�����ɾ�');

--SITTING_OPTION

    --DROP table SITTING_OPTION;
    create table SITTING_OPTION(
        SITTING_OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_ID_pk primary key,--����ÿɼ�id
        OPTION_ID VARCHAR(50) not null constraint SITTING_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID),--�ɼ�id
        sitting_id VARCHAR(50) not null --�θ��� �ñ�� ID
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
        SITTER_OPTION_id VARCHAR(50) not null constraint SITTER_OPTION_id_pk primary key,--����Ϳɼ�ID
        SITTER_ID VARCHAR(50) null constraint SITTER_OPTION_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
        OPTION_ID VARCHAR(50) not null constraint SITTER_OPTION_OPTION_ID_Fk references OPTIONS(OPTION_ID)--�ɼ�id
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
    --select * from OWNER_REQUEST; 
    
    --DROP SEQUENCE sequence_CALL;
    CREATE SEQUENCE sequence_CALL
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_CALL.NEXTVAL FROM DUAL;
    --SELECT sequence_CALL.CURRVAL FROM DUAL;
    --truncate table CALL;
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom',NULL,30000,'�����մϴ�','18-06-02','18-06-03',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud',NULL,100000,'Ȱ���մϴ�','18-06-10','18-06-12',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103',NULL,40000,'����̿���','18-06-13','18-06-14',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower',NULL,60000,'������ ì���ּ���','18-06-15','18-06-16',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy',NULL,29000,'�ǿܹ躯�Դϴ�','18-06-06','18-06-07',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'cloud','goodsitter',100000,'Ȱ���մϴ�','18-06-10','18-06-12',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'any6103','goodsitter',40000,'����̿���','18-06-13','18-06-14',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'flower','goodsitter',60000,'������ ì���ּ���','18-06-15','18-06-16',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happy','goodsitter',29000,'�ǿܹ躯�Դϴ�','18-06-06','18-06-07',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'han','goodsitter',100000,'Ȱ���մϴ�','18-06-05','18-06-06',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'jun','goodsitter',40000,'����̿���','18-06-07','18-06-08',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'yeun','goodsitter',60000,'������ ì���ּ���','18-06-01','18-06-02',sysdate,2,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'baek','goodsitter',29000,'�ǿܹ躯�Դϴ�','18-06-03','18-06-04',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'jang','goodsitter',29000,'�ǿܹ躯�Դϴ�','18-06-08','18-07-09',sysdate,1,NULL);

    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','goodsitter',30000,'�����մϴ�','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','bestsitter',30000,'�����մϴ�','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','kind',30000,'�����մϴ�','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','happysis',30000,'�����մϴ�','18-06-16','18-06-17',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','meme',30000,'�����մϴ�','18-06-16','18-06-17',sysdate,1,NULL);
    
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','woo',30000,'�����մϴ�','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','top',30000,'�����մϴ�','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','kang',30000,'�����մϴ�','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','iu',30000,'�����մϴ�','18-06-17','18-06-18',sysdate,1,NULL);
    insert into CALL values('call_id-'||sequence_CALL.NEXTVAL,'happymom','jani',30000,'�����մϴ�','18-06-17','18-06-18',sysdate,1,NULL);
    
    --Delete CALL where OWNER_ID ='happymom';
    --truncate table CALL ;  
    
--SITTER_REQUEST

    --DROP table SITTER_REQUEST;
    Create table SITTER_REQUEST(
        SITTER_REQUEST_id VARCHAR(50) not null constraint SITTER_REQUEST_id_pk primary key,--����Ͱ� ��û
        call_id VARCHAR(50) not null constraint SITTER_REQUEST_call_id_fk references call(call_id),--�θ���id
        OWNER_ID VARCHAR(50) not null constraint SITTER_REQUEST_OWNER_ID_fk references OWNER(OWNER_ID),--����id
        SITTER_ID VARCHAR(50) null constraint SITTER_REQUEST_SITTER_ID_fk  references SITTER(SITTER_ID)--�����id
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
    DAILY_ID  VARCHAR(50) not null constraint DAILY_RECORD_ID_pk primary key,--���� ID
    SITTER_ID VARCHAR(50) null constraint DIARY_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
    OWNER_ID VARCHAR(50) not null constraint DIARY_OWNER_ID_fk references OWNER(OWNER_ID),--����id
    SITTING_ID VARCHAR(50) not null, --�θ���/�ñ�� ID
    DIARY_TITLE VARCHAR(100) not null ,--����
    DIARY_CONTENT VARCHAR(4000) not null ,--����
    DIARY_WRITEDAY DATE not null ,--�ۼ���
    DIARY_PWD VARCHAR(50) not null ,--�Խñ� ��й�ȣ
    DIARY_FNAME VARCHAR(50) null
);    --select * from DIARY; 

    --DROP SEQUENCE sequence_DIARY;
    CREATE SEQUENCE sequence_DIARY
    START WITH 1
    INCREMENT BY 1;
    
    --SELECT sequence_DIARY.NEXTVAL FROM DUAL;
    --SELECT sequence_DIARY.CURRVAL FROM DUAL;

     insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','��å�� �ٳ�Ծ��','źõ��å�� �ٳ�Ծ��',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','����� �߽��ϴ�','������ ��û�Ͻ� ����� �߽��ϴ�',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','happymom','OWNER_REQUEST_id-1','������ �ȸԾ��','���� ������ �ʿ��Ѱ� �����ϴ�',SYSDATE,'1234',NULL);
    
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'bestsitter','cloud','OWNER_REQUEST_id-2','���Ѿ��̿���','������ �����������͸� �ٳ�Ծ��',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'kind','any6103','OWNER_REQUEST_id-12','����� �߽��ϴ�','������ ��û�Ͻ� ����� �߽��ϴ�',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'happysis','flower','OWNER_REQUEST_id-13','������ �ȸԾ��','���� ������ �ʿ��Ѱ� �����ϴ�',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'meme','happy','OWNER_REQUEST_id-16','���� �� �ȸԾ��','Ȥ�� ���ִ��� ���� �ִ� ���Ͽ� �����Ű���?',SYSDATE,'1234',NULL);

    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','��å�� �ٳ�Ծ��','źõ��å�� �ٳ�Ծ��',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','����� �߽��ϴ�','������ ��û�Ͻ� ����� �߽��ϴ�',SYSDATE,'1234',NULL);
    insert into DIARY values('DAILY_ID-'||sequence_DIARY.NEXTVAL,'goodsitter','cloud','call_id-1','������ �ȸԾ��','���� ������ �ʿ��Ѱ� �����ϴ�',SYSDATE,'1234',NULL);
    
    select * from DIARY;  
    
--ADMIN
    --DROP table ADMIN;
    create table ADMIN( 
        ADMIN_ID VARCHAR(20) not null constraint ADMIN_ID_pk primary key,--������id
        ADMIN_PASSWORD VARCHAR(20) not null--��й�ȣ
    );
    --select * from ADMIN;   

    INSERT INTO ADMIN VALUES ('ADMIN','1234');
    --delete ADMIN where admin_id='ADMIN2';
    --select admin_id as id , ADMIN_PASSWORD as pwd
    --from ADMIN

--NOTICE

    --DROP table NOTICE;
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

    --DROP SEQUENCE sequence_NOTICE_ID;
    CREATE SEQUENCE sequence_NOTICE_ID
    START WITH 1
    INCREMENT BY 1;

    --SELECT sequence_NOTICE_ID.NEXTVAL FROM DUAL;
    --SELECT sequence_NOTICE_ID.CURRVAL FROM DUAL;

    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������1','��������1',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������2','��������2',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������3','��������3',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������4','��������4',SYSDATE,0,NULL,NULL);
    INSERT INTO NOTICE VALUES ('NOTICE_ID-'||sequence_NOTICE_ID.NEXTVAL,'��������5','��������5',SYSDATE,0,NULL,NULL);

--SITTER_IMG

    --DROP table SITTER_IMG;   
    Create table SITTER_IMG(
        SITTER_IMG_ID VARCHAR(50) not null constraint SITTER_IMG_ID_pk primary key,--��������id
        SITTER_ID VARCHAR(50) not null constraint SITTER_IMG_SITTER_ID_fk  references SITTER(SITTER_ID),--�����id
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
    
--����
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
--ROLLBACK ;
