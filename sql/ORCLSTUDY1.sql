SELECT *
FROM CHANNEL;

SELECT UNIQUE(���޻�)
FROM CHANNEL;

SELECT COUNT(*)
FROM CHANNEL
WHERE ���޻� LIKE 'C_O%';

SELECT COUNT(UNIQUE(����ȣ))
FROM CHANNEL;

SELECT COUNT(����ȣ)
FROM CHANNEL;

------------------------------------------------------------------------
--Q19. LMEMBERS �����Ϳ��� ���� ���űݾ��� �հ踦 ���� CUSPUR ���̺��� ������ �� CUST ���̺�� 
--����ȣ�� �������� �����Ͽ� ����ϼ���.
CREATE TABLE CUSPUR AS
(SELECT ����ȣ, SUM(���űݾ�)
FROM PRODPUR
GROUP BY ����ȣ);


--Q20.purprd ���̺��� 2�Ⱓ ���űݾ��� ���� ������ �и��Ͽ� ����14, ����15 �÷��� �����ϴ� AMT_YEAR ���̺��� 
--������ �� 14��� 15���� ���űݾ� ���̸� ǥ���ϴ� ���� �÷��� �߰��Ͽ� ����ϼ���.
--��, ����ȣ, ���޻纰�� ���űݾ� �� ������ ���еǾ�� ��.

CREATE TABLE CUST AS SELECT * FROM CUSTDEMO;

ALTER TABLE CUST 
MODIFY(����ȣ PRIMARY KEY);

CREATE TABLE COMP AS SELECT * FROM COMPET;

ALTER TABLE COMP 
MODIFY( ����ȣ REFERENCES CUST(����ȣ));

COMMIT;

CREATE TABLE CH AS SELECT * FROM CHANNEL;

ALTER TABLE CH 
MODIFY( ����ȣ REFERENCES CUST(����ȣ));

CREATE TABLE MEMBER AS SELECT * FROM MEMBERS;

ALTER TABLE MEMBER 
MODIFY( ����ȣ REFERENCES CUST(����ȣ));

COMMIT;

CREATE TABLE PURPRD AS SELECT * FROM PRODPUR;

ALTER TABLE PURPRD 
MODIFY( ����ȣ REFERENCES CUST(����ȣ));

SELECT ���޻�,COUNT(���޻�)
FROM prodcl
GROUP BY ���޻�;

CREATE TABLE PRDCL AS SELECT * FROM PRODCL;

SELECT *
FROM PRODCL
WHERE ��з��ڵ� = 1 AND �ߺз��ڵ� = 0101;

SELECT *
FROM PRODCL
WHERE ��з��ڵ� = 1 AND �ߺз��ڵ� = 0102;

SELECT *
FROM PRODCL
WHERE ��з��ڵ� = 1 AND �ߺз��ڵ� = 0103;

SELECT UNIQUE(�ߺз��ڵ�)
FROM PRODCL
ORDER BY �ߺз��ڵ�;

SELECT UNIQUE(���޻�)
FROM CHANNEL;

SELECT *
FROM CH;

