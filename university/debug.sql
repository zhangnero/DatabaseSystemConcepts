/* 使用ID作为连接条件，ID在结果出现一次 */
select * 
  from student join takes using (ID);

/* 使用ID作为连接条件，ID出现两次 */
select * from 
  student join takes 
  on student.ID = takes.ID;

/* 同on关键词 */
select * 
  from student,takes
  where student.ID = takes.ID;

/* 同Using (ID) */
select *
  from student natural join takes;
  
/* 保留没有选择任何课程的学生 */
select *
  from student natural left outer join takes;

/* 查询没有选择任何课程的学生 */
select ID,name,dept_name
  from student natural left outer join takes
  where COURSE_ID is null;

/* 保留没有选择任何课程的学生 */
select *
  from takes natural right outer join student;

/* 列出Comp.Sci.系的所有学生，以及他们在2009年春季所选修的课程
   2009年春季所有开设的课程都需要列出，就算没有Comp.Sci.系的学生选修 */
select * from
  (select * 
    from student
    where dept_name = 'Comp.Sci.')
    natural full outer join
  (select *
    from takes
    where semester = 'Spring' and year = 2009
  );