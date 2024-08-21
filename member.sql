CREATE TABLE MEMBER(
    EMAIL VARCHAR2(100) PRIMARY KEY,
    PW VARCHAR2(100) NOT NULL,
    PHONE VARCHAR2(50) NOT NULL,
    ADDR VARCHAR2(100) NOT NULL
);
INSERT INTO MEMBER VALUES('admain@aischool.co.kr', 'qwer', '010-1234-5678', '���ֱ����� ���� ������ 92 �뼺�п�');

COMMIT;

SELECT * FROM MEMBER;

CREATE TABLE MESSAGE (
    NUM NUMBER,  --�޼��� ��ȣ (�ߺ� x) --
    NAME VARCHAR2(100) NOT NULL,  -- ������ ��� �̸� --
    EMAIL VARCHAR2(100) NOT NULL,  -- �޴� ��� �̸��� --
    CONTENTS VARCHAR2(1000) NOT NULL,  -- ���� --
    INDATE DATE  -- �ۼ� �ð� -- 
);    

CREATE SEQUENCE MSGNUM START WITH 1 INCREMENT BY 1;

INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, '�����', 'chxssun9410@gmail.com', '���� �౸���� ĳ�����ֲ�', SYSDATE);
INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, '������', 'chxssun9410@gmail.com', '�뷡�� ����', SYSDATE);
INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, '������', 'chxssun9410@gmail.com', '���� ����ǵ� �Ծ��?', SYSDATE);
INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, '�����', 'chxssun9410@gmail.com', '���� �ҽ��ִµ� ����?', SYSDATE);
INSERT INTO MESSAGE VALUES(MSGNUM.NEXTVAL, '�ں���', 'chxssun9410@gmail.com', '���ξ��ϳ�?', SYSDATE);
COMMIT;

SELECT * FROM MESSAGE;

