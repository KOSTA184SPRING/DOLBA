-- �� ���̺�
CREATE TABLE ���� (
	����ID   <������ Ÿ�� ����> NOT NULL, -- �� �÷�
	���ѵ�� <������ Ÿ�� ����> NULL      -- �� �÷�2
);

-- �� ���̺�
ALTER TABLE ����
	ADD
		CONSTRAINT PK_���� -- �� ���̺� �⺻Ű
		PRIMARY KEY (
			����ID -- �� �÷�
		);

-- �� ���̺�2
CREATE TABLE admin (
	admin_id       VARCHAR(20) NOT NULL, -- �� �÷�
	admin_password VARCHAR(20) NOT NULL  -- �� �÷�2
);

-- �� ���̺�2
ALTER TABLE admin
	ADD
		CONSTRAINT PK_admin -- �� ���̺�2 �⺻Ű
		PRIMARY KEY (
			admin_id -- �� �÷�
		);

-- ����
CREATE TABLE owner (
	owner_id          VARCHAR(50)  NOT NULL, -- �� �÷�
	owner_password    VARCHAR(20)  NOT NULL, -- �� �÷�2
	owner_name        VARCHAR(20)  NOT NULL, -- �� �÷�3
	owner_addr        VARCHAR(200) NOT NULL, -- �� �÷�4
	owner_detail_addr VARCHAR(100) NOT NULL, -- �� �÷�6
	owner_phone       VARCHAR(20)  NOT NULL, -- �� �÷�5
	owner_email       VARCHAR(40)  NOT NULL  -- �� �÷�8
);

-- ����
ALTER TABLE owner
	ADD
		CONSTRAINT PK_owner -- ���� �⺻Ű
		PRIMARY KEY (
			owner_id -- �� �÷�
		);

-- �� ���̺�4
CREATE TABLE sitter (
	sitter_id            VARCHAR(50)  NOT NULL, -- �� �÷�
	sitter_password      VARCHAR(20)  NOT NULL, -- �� �÷�3
	sitter_name          VARCHAR(20)  NOT NULL, -- �� �÷�12
	sitter_phone         VARCHAR(20)  NOT NULL, -- �� �÷�13
	sitter_email         VARCHAR(40)  NOT NULL, -- �� �÷�14
	sitter_addr          VARCHAR(200) NOT NULL, -- �� �÷�6
	sitter_detail_addr   VARCHAR(100) NOT NULL, -- �� �÷�8
	sitter_introduce     VARCHAR(200) NOT NULL, -- �� �÷�11
	sitter_grade         NUMBER       NOT NULL, -- �� �÷�9
	sitter_certification VARCHAR(50)  NULL,     -- �� �÷�4
	sitter_pet_amount    NUMBER       NOT NULL, -- �� �÷�7
	sitter_basis_price   NUMBER       NOT NULL, -- �� �÷�2
	sitter_permit        VARCHAR(5)   NULL      -- �� �÷�5
);

-- �� ���̺�4
ALTER TABLE sitter
	ADD
		CONSTRAINT PK_sitter -- �� ���̺�4 �⺻Ű
		PRIMARY KEY (
			sitter_id -- �� �÷�
		);

-- �� ���̺�5
CREATE TABLE pet (
	pet_id      VARCHAR(50) NOT NULL, -- �� �÷�
	owner_id    VARCHAR(50) NOT NULL, -- �� �÷�6
	pet_species VARCHAR(20) NOT NULL, -- �� �÷�2
	pet_size    VARCHAR(10) NOT NULL, -- �� �÷�3
	pet_illness VARCHAR(50) NOT NULL, -- �� �÷�4
	pet_weight  NUMBER      NOT NULL, -- �� �÷�5
	pet_gender  VARCHAR(5)  NOT NULL, -- �� �÷�9
	pet_age     NUMBER      NOT NULL, -- �� �÷�10
	pet_fname   VARCHAR(50) NULL,     -- �� �÷�7
	pet_fsize   NUMBER      NULL      -- �� �÷�8
);

-- �� ���̺�5
ALTER TABLE pet
	ADD
		CONSTRAINT PK_pet -- �� ���̺�5 �⺻Ű
		PRIMARY KEY (
			pet_id,   -- �� �÷�
			owner_id  -- �� �÷�6
		);

-- �� ���̺�6
CREATE TABLE options (
	option_id   VARCHAR(50)  NOT NULL, -- �� �÷�
	option_name VARCHAR(100) NOT NULL  -- �� �÷�8
);

-- �� ���̺�6
ALTER TABLE options
	ADD
		CONSTRAINT PK_option -- �� ���̺�6 �⺻Ű
		PRIMARY KEY (
			option_id -- �� �÷�
		);

-- �� ���̺�7
CREATE TABLE notice (
	notice_id       VARCHAR(50)    NOT NULL, -- �� �÷�
	notice_title    VARCHAR(100)   NOT NULL, -- �� �÷�2
	notice_content  VARCHAR(10000) NOT NULL, -- �� �÷�3
	notice_writeday DATE           NOT NULL, -- �� �÷�4
	notice_readnum  NUMBER         NOT NULL, -- �� �÷�5
	notice_fname    VARCHAR(50)    NULL,     -- �� �÷�6
	notice_fsize    NUMBER         NULL      -- �� �÷�8
);

-- �� ���̺�7
ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice -- �� ���̺�7 �⺻Ű
		PRIMARY KEY (
			notice_id -- �� �÷�
		);

-- �� ���̺�8
CREATE TABLE QA (
	QA_id       VARCHAR(50)    NOT NULL, -- �� �÷�
	owner_id    VARCHAR(50)    NOT NULL, -- �� �÷�8
	QA_title    VARCHAR(100)   NOT NULL, -- �� �÷�2
	QA_content  VARCHAR(10000) NOT NULL, -- �� �÷�3
	QA_writeday DATE           NOT NULL, -- �� �÷�4
	QA_readnum  NUMBER         NOT NULL, -- �� �÷�5
	QA_pwd      VARCHAR(50)    NOT NULL  -- �� �÷�6
);

-- �� ���̺�8
ALTER TABLE QA
	ADD
		CONSTRAINT PK_QA -- �� ���̺�8 �⺻Ű
		PRIMARY KEY (
			QA_id,    -- �� �÷�
			owner_id  -- �� �÷�8
		);

-- �� ���̺�9
CREATE TABLE reply (
	reply_id       VARCHAR(50)    NOT NULL, -- �� �÷�
	QA_id          VARCHAR(50)    NOT NULL, -- �� �÷�4
	owner_id       VARCHAR(50)    NOT NULL, -- �� �÷�8
	reply_content  VARCHAR(10000) NOT NULL, -- �� �÷�2
	reply_writeday DATE           NOT NULL  -- �� �÷�3
);

-- �� ���̺�9
ALTER TABLE reply
	ADD
		CONSTRAINT PK_reply -- �� ���̺�9 �⺻Ű
		PRIMARY KEY (
			reply_id, -- �� �÷�
			QA_id,    -- �� �÷�4
			owner_id  -- �� �÷�8
		);

-- �� ���̺�10
CREATE TABLE review (
	review_id       VARCHAR(20)    NOT NULL, -- �� �÷�
	owner_id        VARCHAR(50)    NOT NULL, -- �� �÷�7
	review_title    VARCHAR(100)   NOT NULL, -- �� �÷�3
	review_content  VARCHAR(10000) NOT NULL, -- �� �÷�2
	review_readnum  NUMBER         NOT NULL, -- �� �÷�4
	review_writeday DATE           NOT NULL, -- �� �÷�5
	review_pwd      VARCHAR(50)    NOT NULL  -- �� �÷�6
);

-- �� ���̺�10
ALTER TABLE review
	ADD
		CONSTRAINT PK_review -- �� ���̺�10 �⺻Ű
		PRIMARY KEY (
			review_id, -- �� �÷�
			owner_id   -- �� �÷�7
		);

-- �� ���̺�11
CREATE TABLE sitter_review (
	sitter_review_id       VARCHAR(50)    NOT NULL, -- �� �÷�2
	sitter_id              VARCHAR(50)    NOT NULL, -- �� �÷�
	owner_id               VARCHAR(50)    NOT NULL, -- �� �÷�3
	sitter_review_content  VARCHAR(10000) NOT NULL, -- �� �÷�5
	sitter_review_writeday DATE           NOT NULL, -- �� �÷�6
	sitter_review_grade    NUMBER         NOT NULL  -- �� �÷�4
);

-- �� ���̺�11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT PK_sitter_review -- �� ���̺�11 �⺻Ű
		PRIMARY KEY (
			sitter_review_id, -- �� �÷�2
			sitter_id,        -- �� �÷�
			owner_id          -- �� �÷�3
		);

-- �� ���̺�12
CREATE TABLE diary (
	daily_record_id  VARCHAR(50)    NOT NULL, -- �� �÷�
	sitter_id        VARCHAR(50)    NOT NULL, -- �� �÷�2
	call_id          VARCHAR(50)    NOT NULL, -- �� �÷�3
	owner_id         VARCHAR(50)    NOT NULL, -- �� �÷�9
	owner_request_id VARCHAR(50)    NOT NULL, -- �� �÷�11
	diary_title      VARCHAR(100)   NOT NULL, -- �� �÷�4
	diary_content    VARCHAR(10000) NOT NULL, -- �� �÷�5
	diary_writeday   DATE           NOT NULL, -- �� �÷�6
	diary_pwd        VARCHAR(50)    NOT NULL, -- �� �÷�7
	diary_fname      VARCHAR(50)    NULL,     -- �� �÷�8
	diary_fsize      NUMBER         NULL      -- �� �÷�10
);

-- �� ���̺�12
ALTER TABLE diary
	ADD
		CONSTRAINT PK_diary -- �� ���̺�12 �⺻Ű
		PRIMARY KEY (
			daily_record_id,  -- �� �÷�
			sitter_id,        -- �� �÷�2
			call_id,          -- �� �÷�3
			owner_id,         -- �� �÷�9
			owner_request_id  -- �� �÷�11
		);

-- �θ���
CREATE TABLE call (
	call_id              VARCHAR(50)  NOT NULL, -- �� �÷�
	owner_id             VARCHAR(50)  NOT NULL, -- �� �÷�3
	sitter_id            VARCHAR(50)  NULL,     -- �� �÷�4
	call_total_price     NUMBER       NOT NULL, -- �� �÷�2
	call_comment         VARCHAR(200) NOT NULL, -- �� �÷�5
	call_reservate_start DATE         NOT NULL, -- �� �÷�6
	call_reservate_end   DATE         NOT NULL, -- �� �÷�9
	call_writeday        DATE         NOT NULL, -- �� �÷�7
	call_petcount        NUMBER       NOT NULL, -- �� �÷�10
	owner_ approval      VARCHAR(5)   NULL      -- �� �÷�8
);

-- �θ���
ALTER TABLE call
	ADD
		CONSTRAINT PK_call -- �θ��� �⺻Ű
		PRIMARY KEY (
			call_id,  -- �� �÷�
			owner_id  -- �� �÷�3
		);

-- �� ���̺�14
CREATE TABLE �θ��⿹�� (
	����ID    <������ Ÿ�� ����> NOT NULL, -- �� �÷�
	owner_id  VARCHAR(50)        NOT NULL, -- �� �÷�3
	call_id   VARCHAR(50)        NOT NULL, -- �� �÷�2
	sitter_id VARCHAR(50)        NOT NULL, -- �� �÷�5
	��������  <������ Ÿ�� ����> NULL      -- �� �÷�7
);

-- �� ���̺�14
ALTER TABLE �θ��⿹��
	ADD
		CONSTRAINT PK_�θ��⿹�� -- �� ���̺�14 �⺻Ű
		PRIMARY KEY (
			����ID,    -- �� �÷�
			owner_id,  -- �� �÷�3
			call_id,   -- �� �÷�2
			sitter_id  -- �� �÷�5
		);

-- �� ���̺�15
CREATE TABLE �ñ�� (
	�ñ��ID       <������ Ÿ�� ����> NOT NULL, -- �� �÷�
	sitter_id      VARCHAR(50)        NOT NULL, -- �� �÷�3
	owner_id       VARCHAR(50)        NULL,     -- �� �÷�2
	����ͽ��ο��� <������ Ÿ�� ����> NULL      -- �� �÷�4
);

-- �� ���̺�15
ALTER TABLE �ñ��
	ADD
		CONSTRAINT PK_�ñ�� -- �� ���̺�15 �⺻Ű
		PRIMARY KEY (
			�ñ��ID,  -- �� �÷�
			sitter_id  -- �� �÷�3
		);

-- �� ���̺�16
CREATE TABLE owner_request (
	owner_request_id       VARCHAR(50) NOT NULL, -- �� �÷�
	owner_id               VARCHAR(50) NOT NULL, -- �� �÷�5
	sitter_id              VARCHAR(50) NOT NULL, -- �� �÷�2
	owner_request_price    NUMBER      NOT NULL, -- �� �÷�6
	owner_request_start    DATE        NOT NULL, -- �� �÷�3
	owner_request_end      DATE        NOT NULL, -- �� �÷�4
	owner_request_petcount NUMBER      NOT NULL, -- �� �÷�7
	sitter_ approval       VARCHAR(5)  NULL      -- �� �÷�8
);

-- �� ���̺�16
ALTER TABLE owner_request
	ADD
		CONSTRAINT PK_owner_request -- �� ���̺�16 �⺻Ű
		PRIMARY KEY (
			owner_request_id, -- �� �÷�
			owner_id,         -- �� �÷�5
			sitter_id         -- �� �÷�2
		);

-- �� ���̺�17
CREATE TABLE �Ű��ϱ� (
	�Ű�ID   <������ Ÿ�� ����> NOT NULL, -- �� �÷�
	owner_id VARCHAR(50)        NOT NULL  -- �� �÷�2
);

-- �� ���̺�17
ALTER TABLE �Ű��ϱ�
	ADD
		CONSTRAINT PK_�Ű��ϱ� -- �� ���̺�17 �⺻Ű
		PRIMARY KEY (
			�Ű�ID,   -- �� �÷�
			owner_id  -- �� �÷�2
		);

-- �� ���̺�18
CREATE TABLE sitter_option (
	sitter_option_id VARCHAR(50) NOT NULL, -- �� �÷�
	sitter_id        VARCHAR(50) NOT NULL, -- �� �÷�2
	option_id        VARCHAR(50) NOT NULL  -- �� �÷�3
);

-- �� ���̺�18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT PK_sitter_option -- �� ���̺�18 �⺻Ű
		PRIMARY KEY (
			sitter_option_id, -- �� �÷�
			sitter_id,        -- �� �÷�2
			option_id         -- �� �÷�3
		);

-- �� ���̺�19
CREATE TABLE ���ֿɼ� (
	���ֿɼ�ID <������ Ÿ�� ����> NOT NULL, -- �� �÷�
	owner_id   VARCHAR(50)        NOT NULL, -- �� �÷�2
	option_id  VARCHAR(50)        NOT NULL  -- �� �÷�3
);

-- �� ���̺�19
ALTER TABLE ���ֿɼ�
	ADD
		CONSTRAINT PK_���ֿɼ� -- �� ���̺�19 �⺻Ű
		PRIMARY KEY (
			���ֿɼ�ID, -- �� �÷�
			owner_id,   -- �� �÷�2
			option_id   -- �� �÷�3
		);

-- �� ���̺�20
CREATE TABLE sitter_request (
	sitter_request_id VARCHAR(50) NOT NULL, -- �� �÷�
	call_id           VARCHAR(50) NOT NULL, -- �� �÷�2
	owner_id          VARCHAR(50) NOT NULL, -- �� �÷�3
	sitter_id         VARCHAR(50) NOT NULL  -- �� �÷�4
);

-- �� ���̺�20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT PK_sitter_request -- �� ���̺�20 �⺻Ű
		PRIMARY KEY (
			sitter_request_id, -- �� �÷�
			call_id,           -- �� �÷�2
			owner_id,          -- �� �÷�3
			sitter_id          -- �� �÷�4
		);

-- �� ���̺�21
CREATE TABLE sitting_option (
	sitting_option_id VARCHAR(50) NOT NULL, -- �� �÷�
	option_id         VARCHAR(50) NOT NULL, -- �� �÷�4
	request_id        VARCHAR(50) NOT NULL, -- �� �÷�8
	owner_request_id  VARCHAR(50) NOT NULL, -- �� �÷�2
	owner_id          VARCHAR(50) NOT NULL, -- �� �÷�5
	sitter_id         VARCHAR(50) NOT NULL, -- �� �÷�3
	sitter_request_id VARCHAR(50) NOT NULL, -- �� �÷�6
	call_id           VARCHAR(50) NOT NULL  -- �� �÷�7
);

-- �� ���̺�21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT PK_sitting_option -- �� ���̺�21 �⺻Ű
		PRIMARY KEY (
			sitting_option_id, -- �� �÷�
			option_id,         -- �� �÷�4
			owner_request_id,  -- �� �÷�2
			owner_id,          -- �� �÷�5
			sitter_id,         -- �� �÷�3
			sitter_request_id, -- �� �÷�6
			call_id            -- �� �÷�7
		);

-- �� ���̺�3
CREATE TABLE date (
	date_id <������ Ÿ�� ����> NOT NULL -- �� �÷�
);

-- �� ���̺�3
ALTER TABLE date
	ADD
		CONSTRAINT PK_date -- �� ���̺�3 �⺻Ű
		PRIMARY KEY (
			date_id -- �� �÷�
		);

-- �� ���̺�5
ALTER TABLE pet
	ADD
		CONSTRAINT FK_owner_TO_pet -- ���� -> �� ���̺�5
		FOREIGN KEY (
			owner_id -- �� �÷�6
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�8
ALTER TABLE QA
	ADD
		CONSTRAINT FK_owner_TO_QA -- ���� -> �� ���̺�8
		FOREIGN KEY (
			owner_id -- �� �÷�8
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�9
ALTER TABLE reply
	ADD
		CONSTRAINT FK_QA_TO_reply -- �� ���̺�8 -> �� ���̺�9
		FOREIGN KEY (
			QA_id,    -- �� �÷�4
			owner_id  -- �� �÷�8
		)
		REFERENCES QA ( -- �� ���̺�8
			QA_id,    -- �� �÷�
			owner_id  -- �� �÷�8
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�10
ALTER TABLE review
	ADD
		CONSTRAINT FK_owner_TO_review -- ���� -> �� ���̺�10
		FOREIGN KEY (
			owner_id -- �� �÷�7
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT FK_sitter_TO_sitter_review -- �� ���̺�4 -> �� ���̺�11
		FOREIGN KEY (
			sitter_id -- �� �÷�
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�11
ALTER TABLE sitter_review
	ADD
		CONSTRAINT FK_owner_TO_sitter_review -- ���� -> �� ���̺�11
		FOREIGN KEY (
			owner_id -- �� �÷�3
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_sitter_TO_diary -- �� ���̺�4 -> �� ���̺�12
		FOREIGN KEY (
			sitter_id -- �� �÷�2
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_call_TO_diary -- �θ��� -> �� ���̺�12
		FOREIGN KEY (
			call_id,  -- �� �÷�3
			owner_id  -- �� �÷�9
		)
		REFERENCES call ( -- �θ���
			call_id,  -- �� �÷�
			owner_id  -- �� �÷�3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�12
ALTER TABLE diary
	ADD
		CONSTRAINT FK_owner_request_TO_diary -- �� ���̺�16 -> �� ���̺�12
		FOREIGN KEY (
			owner_request_id, -- �� �÷�11
			owner_id,         -- �� �÷�9
			sitter_id         -- �� �÷�2
		)
		REFERENCES owner_request ( -- �� ���̺�16
			owner_request_id, -- �� �÷�
			owner_id,         -- �� �÷�5
			sitter_id         -- �� �÷�2
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �θ���
ALTER TABLE call
	ADD
		CONSTRAINT FK_owner_TO_call -- ���� -> �θ���
		FOREIGN KEY (
			owner_id -- �� �÷�3
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �θ���
ALTER TABLE call
	ADD
		CONSTRAINT FK_sitter_TO_call -- �� ���̺�4 -> �θ���
		FOREIGN KEY (
			sitter_id -- �� �÷�4
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�14
ALTER TABLE �θ��⿹��
	ADD
		CONSTRAINT FK_call_TO_�θ��⿹�� -- �θ��� -> �� ���̺�14
		FOREIGN KEY (
			call_id,  -- �� �÷�2
			owner_id  -- �� �÷�3
		)
		REFERENCES call ( -- �θ���
			call_id,  -- �� �÷�
			owner_id  -- �� �÷�3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�14
ALTER TABLE �θ��⿹��
	ADD
		CONSTRAINT FK_sitter_TO_�θ��⿹�� -- �� ���̺�4 -> �� ���̺�14
		FOREIGN KEY (
			sitter_id -- �� �÷�5
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�15
ALTER TABLE �ñ��
	ADD
		CONSTRAINT FK_sitter_TO_�ñ�� -- �� ���̺�4 -> �� ���̺�15
		FOREIGN KEY (
			sitter_id -- �� �÷�3
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�15
ALTER TABLE �ñ��
	ADD
		CONSTRAINT FK_owner_TO_�ñ�� -- ���� -> �� ���̺�15
		FOREIGN KEY (
			owner_id -- �� �÷�2
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�16
ALTER TABLE owner_request
	ADD
		CONSTRAINT FK_owner_TO_owner_request -- ���� -> �� ���̺�16
		FOREIGN KEY (
			owner_id -- �� �÷�5
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�16
ALTER TABLE owner_request
	ADD
		CONSTRAINT FK_sitter_TO_owner_request -- �� ���̺�4 -> �� ���̺�16
		FOREIGN KEY (
			sitter_id -- �� �÷�2
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�17
ALTER TABLE �Ű��ϱ�
	ADD
		CONSTRAINT FK_owner_TO_�Ű��ϱ� -- ���� -> �� ���̺�17
		FOREIGN KEY (
			owner_id -- �� �÷�2
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT FK_sitter_TO_sitter_option -- �� ���̺�4 -> �� ���̺�18
		FOREIGN KEY (
			sitter_id -- �� �÷�2
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�18
ALTER TABLE sitter_option
	ADD
		CONSTRAINT FK_option_TO_sitter_option -- �� ���̺�6 -> �� ���̺�18
		FOREIGN KEY (
			option_id -- �� �÷�3
		)
		REFERENCES option ( -- �� ���̺�6
			option_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�19
ALTER TABLE ���ֿɼ�
	ADD
		CONSTRAINT FK_option_TO_���ֿɼ� -- �� ���̺�6 -> �� ���̺�19
		FOREIGN KEY (
			option_id -- �� �÷�3
		)
		REFERENCES option ( -- �� ���̺�6
			option_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�19
ALTER TABLE ���ֿɼ�
	ADD
		CONSTRAINT FK_owner_TO_���ֿɼ� -- ���� -> �� ���̺�19
		FOREIGN KEY (
			owner_id -- �� �÷�2
		)
		REFERENCES owner ( -- ����
			owner_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT FK_call_TO_sitter_request -- �θ��� -> �� ���̺�20
		FOREIGN KEY (
			call_id,  -- �� �÷�2
			owner_id  -- �� �÷�3
		)
		REFERENCES call ( -- �θ���
			call_id,  -- �� �÷�
			owner_id  -- �� �÷�3
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�20
ALTER TABLE sitter_request
	ADD
		CONSTRAINT FK_sitter_TO_sitter_request -- �� ���̺�4 -> �� ���̺�20
		FOREIGN KEY (
			sitter_id -- �� �÷�4
		)
		REFERENCES sitter ( -- �� ���̺�4
			sitter_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_owner_request_TO_sitting_option -- �� ���̺�16 -> �� ���̺�21
		FOREIGN KEY (
			owner_request_id, -- �� �÷�2
			owner_id,         -- �� �÷�5
			sitter_id         -- �� �÷�3
		)
		REFERENCES owner_request ( -- �� ���̺�16
			owner_request_id, -- �� �÷�
			owner_id,         -- �� �÷�5
			sitter_id         -- �� �÷�2
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_option_TO_sitting_option -- �� ���̺�6 -> �� ���̺�21
		FOREIGN KEY (
			option_id -- �� �÷�4
		)
		REFERENCES option ( -- �� ���̺�6
			option_id -- �� �÷�
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;

-- �� ���̺�21
ALTER TABLE sitting_option
	ADD
		CONSTRAINT FK_sitter_request_TO_sitting_option -- �� ���̺�20 -> �� ���̺�21
		FOREIGN KEY (
			sitter_request_id, -- �� �÷�6
			call_id,           -- �� �÷�7
			owner_id,          -- �� �÷�5
			sitter_id          -- �� �÷�3
		)
		REFERENCES sitter_request ( -- �� ���̺�20
			sitter_request_id, -- �� �÷�
			call_id,           -- �� �÷�2
			owner_id,          -- �� �÷�3
			sitter_id          -- �� �÷�4
		)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION;