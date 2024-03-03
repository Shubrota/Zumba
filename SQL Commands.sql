use CMS;
Create table student (student_id integer, first_name varchar (20), 
last_name varchar(20), date_of_birth varchar(20), enrollment_date varchar(20), session_name varchar(20));
INSERT INTO STUDENTS (student_id, first_name, last_name, date_of_birth, enrollment_date, session_name)
VALUES
  (1, 'John', 'Doe', '1995-03-15', '2018-09-01', 'Sun_Morn'),
  (2, 'Jane', 'Smith', '1998-07-22', '2019-01-15', 'Sun_After'),
  (3, 'Alice', 'Johnson', '1997-05-10', '2017-08-20', 'Sun_Even'),
  (4, 'Bob', 'Williams', '1996-11-28', '2020-02-10', 'Mon_morning');
  
  create table batch (batch_id integer , batch_name varchar(20), session_day varchar(20),session_time varchar(20));
  insert into batch values ( 1,'Sun_morn','Sunday','Morning');