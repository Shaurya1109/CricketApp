create database cricket;
use cricket
GO
create table country(id int primary key identity (1,1),country_name varchar(30),continent_name varchar(30),country_code varchar(30));
select *from country;

insert into country values ('India','Asia','+91');
insert into country values ('West Indies','America','+28');
insert into country values ('England','Europe','+44');
insert into country values ('Australia','Australia','+61');
insert into country values ('South Africa','Africa','+27');

create table player(id int primary key identity (1,1),player_name varchar(30),player_age int, player_id int foreign key references country(id));
select *from player;

insert into player values('Virat Kohli',33,1);
insert into player values('Rohit Sharma',34,1);
insert into player values('KL Rahul',30,1);
insert into player values('Surya Kumar Yadav',33,1);
insert into player values('Rishabh Pant',31,1);
insert into player values('Hardik Pandya',32,1);
insert into player values('Ravindra Jadeja',31,1);
insert into player values('Yuzvendra Chahal',32,1);
insert into player values('Ravichandran Ashwin',33,1);
insert into player values('Jasprit Bumrah',32,1);
insert into player values('Mohd.Shami',34,1);


insert into player values('Shai Hope',33,2);
insert into player values('Ewin Lewis',34,2);
insert into player values('Nicolas Pooran',30,2);
insert into player values('Shemron Hetmeyer',33,2);
insert into player values('Keiron Pollard',31,2);
insert into player values('Sunil Narayan',32,2);
insert into player values('DJ Bravo',31,2);
insert into player values('Kemar Roach',32,2);
insert into player values('Alzari Joseph',33,2);
insert into player values('Oshane Thomas',32,2);
insert into player values('Fabian Alan',34,2);

insert into player values('Johnny Biarstow',33,3);
insert into player values('Jos Buttler',34,3);
insert into player values('Joe Root',30,3);
insert into player values('Eoin Morgan',33,3);
insert into player values('Ben Stokes',31,3);
insert into player values('Moeen Ali',32,3);
insert into player values('Adil Rasheed',31,3);
insert into player values('Stuart Broad',32,3);
insert into player values('Chris Wokes',33,3);
insert into player values('Jimmy Anderson',32,3);
insert into player values('Steven Finn',34,3);

insert into player values('Aaron Finch',33,4);
insert into player values('David Warner',34,4);
insert into player values('Steve Smith',30,4);
insert into player values('Marnus Labushagne',33,4);
insert into player values('Cameron Green',31,4);
insert into player values('Mathew Wade',32,4);
insert into player values('Ashton Agar ',31,4);
insert into player values('Pat Cummins',32,4);
insert into player values('Glen Maxwell',33,4);
insert into player values('Mitchel Starc',32,4);
insert into player values('Josh Hazelwood',34,4);

insert into player values('	Aiden Markram',33,5);
insert into player values('	David Miller',34,5);
insert into player values('Rassie van der Dussen',30,5);
insert into player values('Reeza Hendricks',33,5);
insert into player values('Temba Bavuma',31,5);
insert into player values('	Quinton de Kock',32,5);
insert into player values('Anrich Nortje',31,5);
insert into player values('Kagiso Rabada',32,5);
insert into player values('Keshav Maharaj',33,5);
insert into player values('Lungi Ngidi',32,5);
insert into player values('Tabraiz Shamsi',34,5);

create table stadium(stadium_id int primary key identity (1,1),stadium_name varchar(30),stadium_country int foreign key references country(id),Matches_allowed int );
select * from stadium;

insert into stadium values('Wankhede Stadium',1,3);
insert into stadium values('Vivian Richards Stadium',2,4);
insert into stadium values('Lords Stadium',3 ,2);
insert into stadium values('Melbourne Cricket Ground',4,1);
insert into stadium values('Wanderers Stadium',5,4);


create table matches(match_id int primary key identity(1,1),stadium_id int foreign key references stadium(stadium_id),team1 int foreign key references country(id),team2 int foreign key references country(id),result varchar(30),date_time datetime,Match_Was_Played varchar(30));
insert into matches values(1,1,4,null,'2022-05-23 18:00:00','yes');
insert into matches values(2,2,3,null,'2022-05-24 17:00:00','yes');
insert into matches values(4,4,5,null,'2022-05-25 15:00:00','yes');
insert into matches values(3,3,1,null,'2022-05-26 11:00:00','yes');
insert into matches values(5,5,3,null,'2022-05-27 18:00:00','yes');
insert into matches values(1,1,2,null,'2022-05-28 17:00:00','yes');
insert into matches values(2,2,5,null,'2022-05-29 15:00:00','yes');
insert into matches values(3,3,4,null,'2022-05-30 16:00:00','yes');
insert into matches values(4,4,2,null,'2022-06-01 18:00:00','yes');
insert into matches values(5,5,1,null,'2022-06-02 15:00:00','yes');

select * from country;
select * from player;
select * from stadium;
select * from matches;
