drop table Members;


create table  Members(
	member_id varchar2(30) primary key,	
	member_pw varchar2(30) NOT NULL,	
	addr varchar2(30) NOT NULL,
	tel varchar2(30) NOT NULL
	
);
select * from Members;