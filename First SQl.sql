create table wk1student(
StudentID char(8),
StudentName varchar(80),
StudentAddress varchar(80),
StudentCourseCode varchar(7)
);

SELECT * from wk1student;

insert into wk1student values ('c1234567','Omair','Kevin Street','DT211c');
commit;
select sysdate from dual;
select sysdate -1 from dual;

alter session set current_schema = oduadu;

create table client(
    CNo
        NUMBER(6)
        PRIMARY KEY,
    CCurrent
        CHAR(1) 
        DEFAULT 'Y'
        NOT NULL
        CHECK(CCurrent IN ('Y','N')),
    CName
        VARCHAR(50)
        NOT NULL,
    CDateofbirth
        DATE
        NOT NULL,
    CAmountOwed
        Number(7,2),
    CEmail
        VARCHAR(50)
        NOT NULL
        UNIQUE,
    CNoChildren
        NUMBER(2) 
        DEFAULT 0,
    CRenewDate
        DATE
        DEFAULT SYSDATE+365
);

DROP TABLE CLIENT;

DESCRIBE CLIENT;

SELECT * FROM CLIENT;

INSERT INTO CLIENT VALUES(
18322011,
'Y',
'OMAIR DUADU',
'10-FEB-00',
0,
'M@TTHEWENNIS.INFO',
2,
null
);





alter session set current_schema = pobyrne;

