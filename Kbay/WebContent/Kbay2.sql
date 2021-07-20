-- 상품
--create table product (
--	p_num number(10) primary key not null,
--	p_name varchar2(100) not null,
--	p_used varchar2(100) not null,
--	p_price number(30) not null,
--	p_start_date date not null,
--	p_end_date date not null,
--	p_buyer varchar2(100),
--	p_image varchar2(100) not null,
--	id varchar2(100) not null constraint product_id_fk references kmember(id),
--	p_auct_id number(10) not null constraint product_p_auct_id_fk references auction_result(p_auct_id),
--	p_class_id1 varchar2(100) not null constraint product_p_class_id1_fk references productClass1(p_class_id1),
--	p_class_id2 varchar2(100) not null constraint product_p_class_id2_fk references productClass2(p_class_id2)
--);

-- 회원
--create table kmember (
--	id	varchar2(100) primary key not null,	
--	pass	varchar2(100) not null,
--	name	varchar2(100) not null,
--	tel	varchar2(100)	not null,
--	email	varchar2(100) not null,
--	addr	varchar2(100)	not null,
--	sell_panalty	number(20),
--	buy_panalty	number(20),
--	reg_date	date not null,
--	del	varchar2(100) not null
--);

-- 경매
--create table auction (
--	a_num number(10) primary key,
--	a_price number(30) not null,
--	a_reg_date date not null,
--	p_num number(10) not null,
--	constraint auction_p_num_fk foreign key(p_num)
--		references product(p_num)
--);
--alter table auction add (a_id varchar2(100));

-- 제약 조건 추가
--alter table auction add constraint auction_p_num_fk foreign key(p_num)
--	references product(p_num);

-- -- 경매 결과
--create table auction_result (
--	p_auct_id number(10) primary key,
--	p_auct_desc varchar2(100) not null
--);

-- 상품 대분류
--create table productClass1 (
--	p_class_id1 varchar2(100) primary key not null,
--	p_class_name1 varchar2(100) not null
--);

-- 상품 소분류
--create table productClass2 (
--	p_class_id2 varchar2(100) primary key not null,
--	p_class_name2 varchar2(100) not null,
--	p_class_id1 varchar2(100) not null,
--	constraint productClass2_p_class_id1_fk foreign key(p_class_id1)
--		references productClass1(p_class_id1)
--);

--select * from tab;
--select * from auction_result;
--select * from productClass1;
--select * from productClass2;
--select * from product;
--select * from auction;
--drop table auction_result;