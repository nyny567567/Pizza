
-- 회원 테이블 생성 
CREATE TABLE pizza_members (
    member_no NUMBER(2),
    member_name VARCHAR2(10) NOT NULL,
    b_day VARCHAR2(4) NOT NULL,
    address VARCHAR2(100) NOT NULL,
    phone_no VARCHAR2(13) NOT NULL,
    stamp_cnt NUMBER(2) DEFAULT 0
);

-- 회원 시퀀스 생성
CREATE SEQUENCE pizza_mem_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99
    NOCYCLE
    NOCACHE;

    
-- 비회원 테이블 생성
CREATE TABLE non_pizza_members (
    address VARCHAR2(100) NOT NULL,
    phone_no VARCHAR2(13) NOT NULL
);

--------------------------------------------------------------------------------

-- 메인 테이블 생성
CREATE TABLE main (
    menu_no NUMBER(10) PRIMARY KEY,
    menu_name VARCHAR2(100) NOT NULL,
    price NUMBER(5) NOT NULL
);

-- 사이드 테이블 생성
CREATE TABLE side (
    menu_no NUMBER(10) PRIMARY KEY,
    menu_name VARCHAR2(100) NOT NULL,
    price NUMBER(5) NOT NULL
);

-- 메뉴 시퀀스 생성
CREATE SEQUENCE main_seq
    START WITH 6
    INCREMENT BY 1
    MAXVALUE 99
    NOCYCLE
    NOCACHE;
    
-- 사이드 시퀀스 생성
CREATE SEQUENCE side_seq
    START WITH 9
    INCREMENT BY 1
    MAXVALUE 99
    NOCYCLE
    NOCACHE;

DROP TABLE main;
DROP TABLE side;
DROP SEQUENCE main_seq;
DROP SEQUENCE side_seq;

SELECT * FROM main;

-- 메인 더미 데이터
INSERT INTO main VALUES('1', '콤비네이션 피자', 20500);
INSERT INTO main VALUES('2', '불고기 피자', 20500);
INSERT INTO main VALUES('3', '페페로니 피자', 19500);
INSERT INTO main VALUES('4', '베이컨체다치즈 피자', 20500);
INSERT INTO main VALUES('5', '고구마 피자', 22500);

-- 사이드 더미 데이터
INSERT INTO side VALUES('1', '떡볶이', 8000);
INSERT INTO side VALUES('2', '치즈볼', 5500);
INSERT INTO side VALUES('3', '치즈 오븐 스파게티', 9000);
INSERT INTO side VALUES('4', '브래드 스틱', 7000);
INSERT INTO side VALUES('5', '치킨 텐더 [6조각]', 9000);
INSERT INTO side VALUES('6', '콜라 [1.25L]', 2500);
INSERT INTO side VALUES('7', '제로 콜라 [1.25L]', 2500);
INSERT INTO side VALUES('8', '스프라이트 [1.5L]', 2500);

COMMIT;
--------------------------------------------------------------------------------

-- 주문 테이블 생성
CREATE TABLE pizza_order (
    order_no NUMBER(2),
    order_date DATE DEFAULT sysdate,
    member_no NUMBER(2),
    menu_list VARCHAR2(100),
    total_price NUMBER(7)
);

-- 주문 시퀀스 생성
CREATE SEQUENCE pizza_order_seq
    START WITH 1
    INCREMENT BY 1
    MAXVALUE 99
    NOCYCLE
    NOCACHE;
    
