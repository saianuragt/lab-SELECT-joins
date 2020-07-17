insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');
insert into role(id,name)values(3,'ALUMINI');
insert into role(id,name)values(4,'TEACHER');
insert into role(id,name)values(5,'ALUMINI');
insert into role(id,name)values(6,'STUDENT');
insert into role(id,name)values(7,'ALUMINI');
select * from role;

insert into skill(id,description,name)values(1,'self learning','learn');
insert into skill(id,description,name)values(2,'technical skills','coding');
select * from skill;

insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
select * from department;

insert into degree(id,department_id,name)values(1,1,'EEE');
insert into degree(id,department_id,name)values(2,2,'ECE');

insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);


insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(1,'TCS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),1);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(2,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(3,'Wipro',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),3);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(4,'Accenture',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),4);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(5,'Infosys',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),5);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(6,'HCL',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),6);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(7,'KPMG',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),7);
select * from experience;

insert into project(id,name,number_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(2,'Library management',11,2,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(3,'Department management',11,3,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(4,'Student management',11,4,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(5,'Hostel management',11,5,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(6,'Employee management',11,6,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(7,'Faculty management',11,7,'for school and college');
select * from project;

insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(3,'abc@xyz.com','abc','abc',9845621741,3,3,'abc');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(4,'def@xyz.com','def','def',9845621742,4,4,'def');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(5,'ghi@xyz.com','ghi','ghi',9845621743,5,5,'ghi');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(6,'jkl@xyz.com','jkl','jkl',9845621744,6,6,'jkl');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(7,'mno@xyz.com','mno','mno',9845621745,7,7,'mno');
select * from user_new;

insert into querytable(id,content,dateof,parent_id,user_id)values(1,'Alumini management',TO_DATE('2008/11/11','YYYY/MM/DD'),1,1);
insert into querytable(id,content,dateof,parent_id,user_id)values(2,'Library management',To_DATE('2008/11/19','YYYY/MM/DD'),2,2);
insert into querytable(id,content,dateof,parent_id,user_id)values(3,'Department management',To_DATE('2008/11/19','YYYY/MM/DD'),3,3);
insert into querytable(id,content,dateof,parent_id,user_id)values(4,'Student management',To_DATE('2008/11/19','YYYY/MM/DD'),4,4);
insert into querytable(id,content,dateof,parent_id,user_id)values(5,'Hostel management',To_DATE('2008/11/19','YYYY/MM/DD'),5,5);
insert into querytable(id,content,dateof,parent_id,user_id)values(6,'Employee management',To_DATE('2008/11/19','YYYY/MM/DD'),6,6);
insert into querytable(id,content,dateof,parent_id,user_id)values(7,'Faculty management',To_DATE('2008/11/19','YYYY/MM/DD'),7,7);
select * from querytable;


insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(2,TO_DATE('2008/11/11','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(3,TO_DATE('2008/11/11','YYYY/MM/DD'),'Building opening','member','FACEPrep',3);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(4,TO_DATE('2008/11/11','YYYY/MM/DD'),'Hostel opening','member','FACEPrep',4);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(5,TO_DATE('2008/11/11','YYYY/MM/DD'),'Mess opening','member','FACEPrep',5);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(6,TO_DATE('2008/11/11','YYYY/MM/DD'),'Canteen opening','member','FACEPrep',6);
insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(7,TO_DATE('2008/11/11','YYYY/MM/DD'),'Branch opening','member','FACEPrep',7);
select * from event;
