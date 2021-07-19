create table productClass1 (
	p_class_id1 varchar2(100) primary key not null,
	p_class_name1 varchar2(100) not null
);

insert into productClass1 values('A', '패션');
delete productClass1 where p_class_name1 = '여성의류';

-- 상품 소분류
create table productClass2 (
	p_class_id2 varchar2(100) primary key not null,
	p_class_name2 varchar2(100) not null,
	p_class_id1 varchar2(100) not null
	references productClass1(p_class_id1)
);
--	constraint productClass2_p_class_id1_fk foreign key(p_class_id1)
-- insert into productClass2 values('A1', '여성의류', 'A');
insert into productClass1 values ('A', '패션'); 
insert into productClass1 values ('B', '가전'); 
insert into productClass1 values ('C', '스포츠'); 
insert into productClass1 values ('D', '헬스&뷰티'); 
insert into productClass1 values ('E', '수집품'); 
select * from productClass2;
select * from product;
insert into productClass2 values ('A1', '여성의류', 'A');
insert into productClass2 values ('A2', '남성의류', 'A');
insert into productClass2 values ('A3', '액세서리', 'A');
insert into productClass2 values ('B1', '스마트홈', 'B');
insert into productClass2 values ('B2', '컴퓨터', 'B');
insert into productClass2 values ('B3', '핸드폰', 'B');
insert into productClass2 values ('C1', '피트니스', 'C');
insert into productClass2 values ('C2', '캠핑용품', 'C');
insert into productClass2 values ('D1', '코스매틱', 'D');
insert into productClass2 values ('D2', '건강식품', 'D');
insert into productClass2 values ('E1', '피규어', 'E');
insert into productClass2 values ('E2', '빈티지', 'E');
--select * from tab;
--select * from kmember;
--select * from auction_result;
--select * from productClass1;
--select * from productClass2;
--select * from product;
--select * from auction;
--drop table auction_result;

-- alter table auction add (a_id varchar2(100));
-- 회원
create table kmember (
	id	varchar2(100) primary key not null,	
	pass	varchar2(100) not null,
	name	varchar2(100) not null,
	tel	varchar2(100)	not null,
	email	varchar2(100) not null,
	addr	varchar2(100)	not null,
	sell_panalty	number(20),
	buy_panalty	number(20),
	reg_date	date not null,
	del	varchar2(100) not null
);

insert into kmember values ('k1', '123', '까치', '010-2525-4545', 'a@n.com', '강남구', null, null, sysdate, 'n');
-- 상품
create table product (
	p_num number(10) primary key not null,
	p_name varchar2(100) not null,
	p_used varchar2(100) not null,
	p_price number(30) not null,
	p_start_date date not null,
	p_end_date date not null,
	p_buyer varchar2(100),
	p_image varchar2(100) not null,
	id varchar2(100) not null constraint product_id_fk references kmember(id),
	p_auct_id number(10) not null,
	p_class_id1 varchar2(100) not null,
	p_class_id2 varchar2(100) not null
);

insert into product values (1, '생선', '사용중', 1000, sysdate, sysdate, 'k1', 'p_image', 'k1', 0, 'A', 'A1'); 
insert into product values (2, '강낭콩', '사용중', 2000, sysdate, sysdate, 'k1', 'p_image2', 'k1', 0, 'A', 'A1');
insert into product values (3, '유니콘', '사용중', 4000, sysdate, sysdate, 'k1', 'p_imag5', 'k1', 0, 'B', 'B1');
insert into product values (4, '마약 원피스', '사용중', 5000, sysdate, sysdate, 'k1', 'p_imag6', 'k1', 0, 'A', 'A1');
insert into product values (5, '예쁜 원피스', '사용중', 6000, sysdate, sysdate, 'k1', 'p_imag7', 'k1', 0, 'A', 'A1');
insert into product values (6, '곤약 원피스', '사용중', 7000, sysdate, sysdate, 'k1', 'p_imag8', 'k1', 0, 'A', 'A1');
insert into product values (7, '쥐약 원피스', '사용중', 8000, sysdate, sysdate, 'k1', 'p_imag9', 'k1', 0, 'A', 'A1');
insert into product values (9, '모기약 원피스', '사용중', 9000, sysdate, sysdate, 'k1', 'p_imag10', 'k1', 0, 'A', 'A1');
insert into product values (10, '매미약 원피스', '사용중', 5000, sysdate, sysdate, 'k1', 'p_imag11', 'k1', 0, 'A', 'A1');
insert into product values (12, '귀여운 원피스', '사용중', 7000, sysdate, sysdate, 'k1', 'p_imag13', 'k1', 0, 'A', 'A1');
insert into product values (13, '깜찍 원피스', '사용중', 8000, sysdate, sysdate, 'k1', 'p_imag14', 'k1', 0, 'A', 'A1');
insert into product values (14, '상큼 원피스', '사용중', 9000, sysdate, sysdate, 'k1', 'p_imag15', 'k1', 0, 'A', 'A1');
insert into product values (11, '개미약 원피스', '사용중', 6000, sysdate, sysdate, 'k1', 'p_imag12', 'k1', 0, 'A', 'A1');
insert into product values (15, '큐티 원피스', '사용중', 10000, sysdate, sysdate, 'k1', 'p_imag16', 'k1', 0, 'A', 'A1');
insert into product values (16, '뽀잉 원피스', '사용중', 4000, sysdate, sysdate, 'k1', 'p_imag17', 'k1', 0, 'A', 'A1');
insert into product values (17, '눈물 원피스', '사용중', 5000, sysdate, sysdate, 'k1', 'p_imag18', 'k1', 0, 'A', 'A1');
insert into product values (18, '사또 원피스', '사용중', 3000, sysdate, sysdate, 'k1', 'p_imag19', 'k1', 0, 'A', 'A1');
insert into product values (19, '히죽 원피스', '사용중', 2000, sysdate, sysdate, 'k1', 'p_imag20', 'k1', 0, 'A', 'A1');
insert into product values (20, '야호 원피스', '사용중', 1000, sysdate, sysdate, 'k1', 'p_imag21', 'k1', 0, 'A', 'A1');
insert into product values (21, '뇸뇸 원피스', '미사용', 5000, sysdate, sysdate, 'k1', 'p_imag11', 'k1', 0, 'A', 'A1');
insert into product values (22, '키키 원피스', '사용중', 2000, sysdate, sysdate, 'k1', 'p_imag62', 'k1', 0, 'A', 'A1');
insert into product values (23, '랄라 원피스', '미사용', 3000, sysdate, sysdate, 'k1', 'p_imag622', 'k1', 0, 'A', 'A1');
insert into product values (24, '치아라 원피스', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'A', 'A1');
insert into product values (25, '빛', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (26, '쿠', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (27, 'ㅇ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (28, 'ㅅ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (29, 'ㅁ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (30, 'ㅂ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (31, 'ㅈ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (32, 'ㅍ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (33, 'ㅎ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (34, 'ㄴ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (35, 'ㄷ', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (36, '232', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (37, '손', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (38, '카카', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (39, '뽀뇨', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
insert into product values (40, '포로롱', '미사용', 6000, sysdate, sysdate, 'k1', 'p_imag652', 'k1', 0, 'C', 'C2');
delete product where p_num=24;

--select * from product;
--alter table product drop constraint product_id_fk;
--alter table product drop constraint product_p_auct_id_fk;
--alter table product drop constraint product_p_class_id1_fk;
--alter table product drop constraint product_p_class_id2_fk;

--select * from product;

-- select * from product where p_class_id1 = 'A' and p_class_id2 = 'A1';
-- 경매
create table auction (
	a_num number(10) primary key,
	a_price number(30) not null,
	a_reg_date date not null,
	p_num number(10) not null,
	a_id varchar2(100),
	constraint auction_p_num_fk foreign key(p_num)
		references product(p_num)
);
-- 경매 결과
create table auction_result (
	p_auct_id number(10) primary key,
	p_auct_desc varchar2(100) not null
);

insert into auction_result values(0, '경매중');

-- alter table auction drop constraint auction_p_num_fk;
-- 제약 조건 추가
--alter table auction add constraint auction_p_num_fk foreign key(p_num)
--	references product(p_num);
-- 상품 대분류
--alter table productClass2 drop constraint productClass2_p_class_id1_fk;
--delete productClass2 where p_class_id2 = 'A';
--drop table productClass2;

-- 상품리스트 출력 쿼리문 (테이블 3개 조인)
-- select p_num, p_name, pc1.p_class_name1, pc2.p_class_name2, p_price, p_used, p_start_date, p_end_date 
-- from product p, productClass1 pc1, productClass2 pc2 
-- where p.p_class_id1 = pc1.p_class_id1 and p.p_class_id2 = pc2.p_class_id2 and pc1.p_class_id1='A' and pc2.p_class_id2='A1';

--select * from product;

--select * from (select a.*, rowNum rn from (
--select p_num, p_name, pc1.p_class_name1, pc2.p_class_name2, pc1.p_class_id1, pc2.p_class_id2, p_price, p_used, p_start_date, p_end_date
--from product p, productClass1 pc1, productClass2 pc2 
--where p.p_class_id1 = pc1.p_class_id1 and p.p_class_id2 = pc2.p_class_id2
--and pc1.p_class_id1='A' and pc2.p_class_id2='A1' order by p_start_date desc) a)
--where rn between 1 and 20;

--select * from product;

--update product set p_num=1 where p_num='1'; 
--select * from product where p_num=1;
		
--select * from (select a.*, rowNum rn 
--		from (select * from product order by p_start_date desc) a)
--		where rn between #{startRow} and #{endRow}
	
--select id from kmember where id = 'k1';

--select * from kmanager where m_id = 'admin';

--select * from knotice;
--alter table notice rename to knotice;

--delete product where p_num=5;
--select * from member2;
--select * from board;

delete knotice;

select * from knotice;
drop table knotice;
create table knotice (
	n_num number(10) primary key,
	m_id  varchar2(100) references kmanager(m_id),
	n_subject varchar2(100) not null,
	n_content varchar2(100) not null,
	n_reg_date date not null
);
-- alter table knotice add (m_pass varchar2(100));
insert into knotice values(1, 'admin', '안녕' , '우리집 강아지 뽀삐', sysdate);
--select nvl(max(n_num),0) + 1 from knotice where n_num=0;
--select * from knotice;
--select * from member2;
--select * from board;

--select * from knotice order by n_reg_date desc;