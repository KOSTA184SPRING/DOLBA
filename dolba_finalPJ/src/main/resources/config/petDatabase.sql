
CREATE TABLE owner_request(
     owner_request_id varchar2(20) PRIMARY KEY,
     owner_id varchar2(20),
     sitter_id varchar2(20),
     owner_request_price number,
     owner_request_start varchar2(20),
     owner_request_end varchar2(20),
     owner_request_petcount number,
     sitter_approval varchar2(20)
    
  )
  select * from owner_request where sitter_approval is Null or sitter_approval = 'x'
  select * from OWNER_REQUEST where sitter_approval==null

  INSERT INTO owner_request VALUES(1,'���Ѻ�','������',10000,'2018-06-01','2018-06-03',1,null);
  INSERT INTO owner_request VALUES(2,'������','������',10000,'2018-06-02','2018-06-05',1,null);
  INSERT INTO owner_request VALUES(3,'�����','������',20000,'2018-06-02','2018-06-05',1,'x');
  INSERT INTO owner_request VALUES(4,'��ÿ�','������',20000,'2018-06-11','2018-06-12',1,'y');
  INSERT INTO owner_request VALUES(5,'������','������',30000,'2018-06-13','2018-06-13',1,'x');
  INSERT INTO owner_request VALUES(6,'�̿���','������',30000,'2018-06-13','2018-06-17',1,'y');
   INSERT INTO owner_request VALUES(7,'�̽¿�','������',30000,'2018-06-16','2018-06-20',1,'y');
  select*from owner_request
  
  create table call(
  	call_id varchar2(20) primary key,
  	owner_id varchar2(20),
  	sitter_id varchar2(20),
  	call_total_price number,
  	call_comment varchar2(20),
  	call_reservate_start date,
  	call_reservate_end date,
  	call_writeday date,
  	call_petcount number,
  	owner_approval varchar2(5)
  )
  
  alter table call modify(call_comment varchar2(50))
  
    INSERT INTO call VALUES(1,'���Ѻ�','������',10000,'�ּ��� ���ϴ»����','2018-06-01','2018-06-03',sysdate,1,null);
    INSERT INTO call VALUES(2,'���Ѻ�','������',10000,'�ּ��� ���ϴ»����','2018-06-04','2018-06-06',sysdate,1,null);
    INSERT INTO call VALUES(3,'���Ѻ�','�����',10000,'�ּ��� ���ϴ»����','2018-06-06','2018-06-09',sysdate,1,null);
    INSERT INTO call VALUES(4,'���Ѻ�','�����',10000,'�ּ��� ���ϴ»����','2018-06-07','2018-06-11',sysdate,1,null);
    INSERT INTO call VALUES(5,'���Ѻ�','�徾',10000,'�ּ��� ���ϴ»����','2018-06-06','2018-06-07',sysdate,1,null);
    INSERT INTO call VALUES(6,'���Ѻ�','����¯',10000,'�ּ��� ���ϴ»����','2018-06-22','2018-06-25',sysdate,1,null);
    INSERT INTO call VALUES(7,'���Ѻ�','����',10000,'�ּ��� ���ϴ»����','2018-06-17','2018-06-20',sysdate,1,null);
    INSERT INTO call VALUES(8,'���Ѻ�','������',10000,'�ּ��� ���ϴ»����','2018-06-01','2018-06-05',sysdate,1,null);

    update call set owner_approval=null
    
    
    
  select*from CALL