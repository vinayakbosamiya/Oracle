CREATE database vinay;

CREATE TABLE contact(sid INT,email VARCHAR(20), NO INT);
INSERT INTO contact VALUES(6,'par@gmail.com',123);
select * FROM contact;
DROP TABLE contact;
create table student(id int,name varchar(255),perc int, gender varchar(10),branch varchar(10));

insert into student values
(1,'hari',99,'male','cse'),
(2,'ramaya',90,'female','cse'),
(3,'sandip',95,'male','cse'),
(4,'sonali',78,'female','cse'),
(5,'sarthak',88,'male','sivial'),
(6,'yamini',98,'female','eee');

select * from Student;

create view cse_student as select * from Student where branch = 'cse';

select * from cse_student;

update student set perc = 85 where id = 4;

update cse_student set name = 'harse' where id = 1;

CREATE VIEW v2 AS SELECT student.id,student.name,contact.email,contact.no FROM student,contact WHERE student.id = contact.sid;

DROP VIEW v2;

SELECT * FROM v2;


CREATE SYNONYM std1 FOR student;