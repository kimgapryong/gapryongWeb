-- member table(회원 가입)
-- 회원 아이디, 비번, 이름, 매일, 
create table member(
    id varchar2(20) not null,
    password varchar2(20),

    name varchar2(20),
    email varchar(30),
    primary key(id)
);
<<<<<<< HEAD
CREATE TABLE gameList (
    id VARCHAR2(20) NOT NULL,
    productId varchar2(10) not null,
    ischeck NUMBER(1) DEFAULT 0 NOT NULL,  -- BOOLEAN을 NUMBER(1)로 처리, 0은 false
    CONSTRAINT fk_check_product FOREIGN KEY (productId) REFERENCES product(productId) ON DELETE CASCADE
);
drop table gameList;
DELETE FROM gameList WHERE id = 'hyo';

select * from gameList; 
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
select * from member;
drop table member;
drop table product;
commit;

CREATE TABLE moneyValue (
    id VARCHAR2(20) NOT NULL,
    value NUMBER DEFAULT 0,
    PRIMARY KEY (id),
    CONSTRAINT fk_money_member FOREIGN KEY (id) REFERENCES member(id) ON DELETE CASCADE
);
drop table moneyValue;
<<<<<<< HEAD
select * from moneyValue;
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
-- 트리거 정의
CREATE OR REPLACE TRIGGER trg_insert_moneyValue
AFTER INSERT ON member
FOR EACH ROW
BEGIN
    INSERT INTO moneyValue (id, value) VALUES (:NEW.id, 0);
END;
/

<<<<<<< HEAD



commit;
select * from gameList;
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
--Game Product(게임 제품)
create table product(
    productId varchar2(10) not null,
    pname varchar2(60),
    p_description varchar2(100),
    programname varchar(15),
    filename varchar(100),
    quantity number,
    primary key(productId)
);
insert into product values('P1234', '비행기', '비행기 게임/ #2D #횡스크롤 #액션', '김갑룡', 'jwa1.jpg', 5000);
insert into product values('P1255', '스타크듀드', '스타듀밸리/ #2D #횡스크롤 #액션', '김갑룡', 'jwa2.jpg', 15000);
insert into product values('P1212', '미소년의 꿈', '미소년의 꿈/ #미소녀 #연애 #시뮬레이션', '김갑룡', 'jwa3.jpg', 2000);
insert into product values('P5556', '효원이의 꿈', '미소년의 꿈/ #미소녀 #연애 #시뮬레이션', '김갑룡', 'ba.jpg', 2000);
insert into product values('P5858', '효원이와 티치의 사랑이야기', '효원이의 꿈/ #미소녀 #연애 #시뮬레이션', '김효원', 'hyowon.jpg', 2000);
commit;
select * from product;
select * from product where productId = 'P1234';
delete form product where productId = 'p1212';
update product set pname ='비헹기',p_description = '수정', programname = '수정', filename = 'jwa1.jpg' where productId = 'P1212';

select * from board where board_seq = 10;

create table addCart(
<<<<<<< HEAD
    cart_seq number not null,
=======
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
    productId varchar2(10) not null
    ,pname varchar2(60)
    ,p_description varchar2(100)
    ,programer varchar(15)
    ,filename varchar(100)
    ,quantity number
<<<<<<< HEAD
    ,primary key(cart_seq)
);
create sequence cart_seq nocycle nocache;
=======
);
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
drop table addCart;
-- 카트 저장
insert into addCart(productId, pname, p_description, programer, filename, quantity) select productId, pname, p_description, programname, filename, quantity from product where productId = 'P1234';

select * from addCart;

CREATE table board(
    board_seq number not null 
    ,id varchar2(30) not null
    ,name varchar2(30) not null
    ,subject varchar2(100) not null
    ,content varchar2(3000) not null
    ,regist_day date default sysdate
    ,hit number
    ,ip varchar2(30) not null
    ,primary key(board_seq)
);
drop table board;
-- 시퀀스 생성
create sequence board_seq nocycle nocache;
select * from board;
drop sequence board_seq;

update board set subject ='수정', content ='내용수정',ip ='2', update_day = sysdate where board_seq =2;
-- 데이터 정장
insert into board(board_seq,id,name,subject,content, regist_day,hit,ip )values(board_seq.nextval, 'cuty01', '김갑룡', '제목','내용', sysdate,0, '192.168.0.111');
<<<<<<< HEAD
commit;
=======
commit;
insert into board values(board_seq.nextval, 'cuty01', '김갑룡', '제목','내용', sysdate,0, '192.168.0.111', sysdate);
>>>>>>> 41e8ef6888d484f1d11e5d0284a898be54e0c4c7
