-- member table(회원 가입)
-- 회원 아이디, 비번, 이름, 매일, 
create table member(
    id varchar2(20) not null,
    password varchar2(20),

    name varchar2(20),
    email varchar(30),
    primary key(id)
);
select * from member;
drop table member;
commit;



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