CREATE DATABASE stu_info;
USE stu_info;
CREATE TABLE grade(
	stu_id INT,
	name VARCHAR(20),
      grade FLOAT
      );

desc grade;
alter table grade modify stu_id int primary key;desc grade;
CREATE TABLE course(
stu_id INT,
course_id INT,
grade FLOAT
);

alter table course add primary key( stu_id,course_id);
desc course;
desc course;

alter table grade modify name varchar(20) not null;
desc grade;

alter table grade modify name varchar(20) unique;
desc grade;

alter table grade modify grade float default 0;
desc grade;

alter table grade modify stu_id int auto_increment;
desc grade;

CREATE TABLE book1(bookid int,
                   bookname varchar(255),
		  authors varchar(255),
		  info varchar(255),
		  comment varchar(255),
		  publicyear YEAR);
CREATE TABLE  book2 SELECT * FROM book1;


create index putong_idx on book1 (bookid);
show index from book1;


alter table book2 add index comm_bookid_idx( bookid);
alter table book2 add index comm_comment_idx( comment);
alter table book2 add index comm_bn_ah_idx( bookname, authors);
show index from book2;

alter table book1 drop index putong_idx;
show index from book1;