drop table Members;


create table  Members(
	id varchar2(30) primary key,	
	pw varchar2(30) NOT NULL,	
	addr varchar2(30) NOT NULL,
	tel varchar2(30) NOT NULL
	
);
select * from Members;