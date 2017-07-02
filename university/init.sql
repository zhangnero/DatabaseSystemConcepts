drop table teaches;
drop table section;
drop table course;
drop table instructor;
drop table department;

create table department
  (dept_name varchar(20),
  building varchar(15),
  budget numeric(12,2),
  primary key (dept_name));
 
create table instructor
  (ID varchar(5),
  name varchar(20),
  dept_name varchar(20),
  salary number(8,0),
  primary key(ID),
  foreign key (dept_name) references department(dept_name));
  
create table course
  (course_id varchar(8),
  title varchar(50),
  dept_name varchar(20),
  credits numeric(2,0),
  primary key (course_id),
  foreign key (dept_name) references department(dept_name));
 
create table section
  (course_id varchar(8),
  sec_id varchar(8),
  semester varchar(6),
  year numeric(4,0),
  building varchar(15),
  room_number varchar(7),
  time_slot_id varchar(4),
  primary key (course_id,sec_id,semester,year),
  foreign key (course_id) references course(course_id)
  );
  
create table teaches
  (ID varchar(5),
  course_id varchar(8),
  sec_id varchar(8),
  semester varchar(6),
  year numeric(4,0),
  primary key (ID, course_id,sec_id,semester,year),
  foreign key(course_id,sec_id,semester,year)
    references section(course_id,sec_id,semester,year),
  foreign key (ID) references instructor(ID));

insert into department(dept_name, building, budget) values('Biology', 'Watson', 90000);
insert into department(dept_name, building, budget) values('Comp.Sci.', 'Taylor', 100000);
insert into department(dept_name, building, budget) values('Elec.Eng.', 'Taylor', 85000);
insert into department(dept_name, building, budget) values('Finance', 'Painter', 120000);
insert into department(dept_name, building, budget) values('History', 'Painter', 50000);
insert into department(dept_name, building, budget) values('Music', 'Packard', 80000);
insert into department(dept_name, building, budget) values('Physics', 'Watson', 70000);

insert into instructor(ID, name , dept_name, salary) values(22222, 'Einstein', 'Physics', 95000);
insert into instructor(ID, name , dept_name, salary) values(12121, 'Wu', 'Finance', 90000);
insert into instructor(ID, name , dept_name, salary) values(32343, 'El Said', 'History', 60000);
insert into instructor(ID, name , dept_name, salary) values(45565, 'Katz', 'Comp.Sci.', 75000);
insert into instructor(ID, name , dept_name, salary) values(98345, 'Kim', 'Elec.Eng.', 80000);
insert into instructor(ID, name , dept_name, salary) values(76766, 'Crick', 'Biology', 72000);
insert into instructor(ID, name , dept_name, salary) values(10101, 'Srinivasan', 'Comp.Sci.', 65000);
insert into instructor(ID, name , dept_name, salary) values(58583, 'Califieri', 'History', 62000);
insert into instructor(ID, name , dept_name, salary) values(83821, 'Brandt', 'Comp.Sci.', 92000);
insert into instructor(ID, name , dept_name, salary) values(15151, 'Mozart', 'Music', 40000);
insert into instructor(ID, name , dept_name, salary) values(33456, 'Gold', 'Physics', 87000);
insert into instructor(ID, name , dept_name, salary) values(76543, 'Singh', 'Finance', 80000);


insert into course(course_id, title , dept_name, credits) values('BIO-101', 'Intro. to Biology', 'Biology', 4);
insert into course(course_id, title , dept_name, credits) values('BIO-301', 'Genetics', 'Biology', 4);
insert into course(course_id, title , dept_name, credits) values('BIO-399', 'Computational Biology', 'Biology', 3);
insert into course(course_id, title , dept_name, credits) values('CS-101', 'Intro. to Computer Science', 'Comp.Sci.', 4);
insert into course(course_id, title , dept_name, credits) values('CS-190', 'Game Design', 'Comp.Sci.', 4);
insert into course(course_id, title , dept_name, credits) values('CS-315', 'Robotics', 'Comp.Sci.', 3);
insert into course(course_id, title , dept_name, credits) values('CS-319', 'Image Processing', 'Comp.Sci.', 3);
insert into course(course_id, title , dept_name, credits) values('CS-347', 'Database System Concepts.', 'Comp.Sci.', 3);
insert into course(course_id, title , dept_name, credits) values('EE-181', 'Intro. to Digital Systems', 'Elec.Eng.', 3);
insert into course(course_id, title , dept_name, credits) values('FIN-201', 'Investment Banking', 'Finance', 3);
insert into course(course_id, title , dept_name, credits) values('HIS-351', 'World History', 'History', 3);
insert into course(course_id, title , dept_name, credits) values('MU-199', 'Music Video Production', 'Music', 3);
insert into course(course_id, title , dept_name, credits) values('PHY-101', 'Physical Principles', 'Physics', 4);

insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('BIO-101', '1', 'Summer', 2009, 'Painter', '514', 'B');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('BIO-301', '1', 'Summer', 2010, 'Painter', '514', 'A');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-101', '1', 'Fall', 2009, 'Packard', '101', 'H');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-101', '1', 'Spring', 2010, 'Packard', '101', 'F');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-190', '1', 'Spring', 2009, 'Taylor', '3128', 'E');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-190', '2', 'Spring', 2009, 'Taylor', '3128', 'A');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-315', '1', 'Spring', 2010, 'Watson', '120', 'D');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-319', '1', 'Spring', 2010, 'Watson', '100', 'B');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-319', '2', 'Spring', 2010, 'Taylor', '3128', 'C');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('CS-347', '1', 'Fall', 2009, 'Taylor', '3128', 'A');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('EE-181', '1', 'Spring', 2009, 'Taylor', '3128', 'C');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('FIN-201', '1', 'Spring', 2010, 'Packard', '101', 'B');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('HIS-351', '1', 'Spring', 2010, 'Painter', '514', 'C');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('MU-199', '1', 'Spring', 2010, 'Packard', '191', 'D');
insert into section(course_id, sec_id, semester, year, building, room_number, time_slot_id) values('PHY-101', '1', 'Fall', 2009, 'Watson', '100', 'A');

insert into teaches(ID, course_id, sec_id, semester, year) values('10101', 'CS-101', '1', 'Fall', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('10101', 'CS-315', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('10101', 'CS-347', '1', 'Fall', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('12121', 'FIN-201', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('15151', 'MU-199', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('22222', 'PHY-101', '1', 'Fall', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('32343', 'HIS-351', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('45565', 'CS-101', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('45565', 'CS-319', '1', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('76766', 'BIO-101', '1', 'Summer', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('76766', 'BIO-301', '1', 'Summer', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('83821', 'CS-190', '1', 'Spring', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('83821', 'CS-190', '2', 'Spring', 2009);
insert into teaches(ID, course_id, sec_id, semester, year) values('83821', 'CS-319', '2', 'Spring', 2010);
insert into teaches(ID, course_id, sec_id, semester, year) values('98345', 'EE-181', '1', 'Spring', 2009);

commit;