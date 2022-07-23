select * from member;

drop table member CASCADE CONSTRAINTS;

create table member(
	ID varchar2(100) not null,
	PW varchar2(100) not null,
	NAME varchar2(100) not null
)

select * from member;


 