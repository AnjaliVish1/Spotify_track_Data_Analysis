create database Spotify;
use Spotify;
create table music(id int primary key,track_id varchar(100) NOT NULL,artists varchar(100) NOT NULL,album_name
varchar(100) NOT NULL,track_name varchar(100) NOT NULL,popularity varchar(100),duration_ms varchar(100),explicit
varchar(100),danceability varchar(100),energy varchar(100),key1 varchar(100),loudness varchar(100),mode1 varchar(100),speechiness
varchar(100),acousticness varchar(100),instrumentalness varchar(100),liveness varchar(100),valence varchar(100),tempo
varchar(100),time_signature varchar(100),track_genre varchar(100));

show tables;

INSERT INTO customers (customer_id, customer_name, track_name) VALUES ('101', 'Martinez', 'Ghost - Acoustic');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('102', 'Jone', 'Comedy');
INSERT INTO Customers (customer_id,customer_name, track_name) VALUES ('103', 'LeBlance', 'Comedy');
INSERT INTO Customers (customer_id, customer_name,track_name) VALUES ('104', 'Wright', 'Say Something');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('105', 'Zohn', 'I\'m Yours');
INSERT INTO Customers (customer_id, customer_name, track_name)VALUES ('106', 'Jones', 'I\'m Yours');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('107', 'Dave', 'Bad Liar');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('108', 'Mary', 'Solo');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('109', 'Martin', 'Solo');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('110', 'Lisa', 'Falling in Love at a Coffee Shop');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('111', 'Glory', 'Say Something');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('112', 'Febby', 'Demons');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('113', 'Dave', 'Photograph');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('114', 'John', 'If It Kills Me');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('115', 'David', 'Winter Wonderland');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('116', 'Andy', 'Winter Wonderland');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('117', 'Michael', 'If It Kills Me');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('118', 'Kelly', 'Party of One');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('119', 'Jimmy', 'Party of One');
INSERT INTO Customers (customer_id, customer_name, track_name) VALUES ('120', 'Angela', 'Photograph');

select * from Customers;
create table subscription_plan(Name Varchar(50),Price varchar(50),Description varchar(100));

desc subscription_plan;
insert into subscription_plan(Name,price,Description)values("Spotify Free","$0.00 /month","Shuffle Play");
insert into subscription_plan(Name,price,Description)values("Spotify Primium","$9.99 /month","Play the track ,Listen Offline, No ads interuption,unlimited skips");
insert into subscription_plan(Name,price,Description)values("Spotify Duo","$19.80 /month","2 Primium Accounts for couple under one roof ,Duo Mix:regulary updated with music you both Enjoy");

select * from subscription_plan;


-- 1.show the schema of the tables
desc spotify_music;
desc music_details;

-- 2.show whole record of table
select * from spotify_music;

 -- 3.rename table spotify_music to spotify_music1
 alter table spotify_music
 rename spotify_music1;
 show tables;
 desc spotify_music1;
 select * from spotify_music1;
 
 -- 4.Change column name of id to music_id
 alter table spotify_music1
 change column id music_id int;
 desc spotify_music1;
 
 -- 5.command to fetch artist name using distinct
 select distinct artists from spotify_music1;
 
 -- 6.Query to fetch columns music_id,artists,album_name,track_name,popularity whose popularity is 74
select music_id,artists,album_name,track_name,popularity from spotify_music1
WHERE popularity =74;

-- 7.Query to fetch data where album_name and track_name are same and popularity should be greater than 56
select music_id,artists,album_name,track_name,popularity from spotify_music1
where album_name=track_name AND popularity>56;

-- 8.Query to fetch data where album_name and track_name are same or popularity is 56.
select music_id,artists,album_name,track_name,popularity from spotify_music1
where album_name=track_name OR popularity=56;

-- 9.Write a query to fetch data where popularity should not be 74
select music_id,artists,album_name,track_name,popularity from spotify_music1
where NOT popularity=74;

-- 10.write query to fetch data where popularity is between 60 to 70
select music_id,artists,album_name,track_name,popularity from spotify_music1
where popularity BETWEEN 60 AND 70;

-- 11.write query to fetch data where popularity is not between 60 to 70
select music_id,artists,album_name,track_name,popularity from spotify_music1
where popularity NOT BETWEEN 60 AND 70;


-- 12.Write a query to fetch data where popularity is 52 or 62 or 69.
select music_id,artists,album_name,track_name,popularity from spotify_music1
where popularity IN(52,62,69);

-- 13.Write a query to fetch data using not IN operator
select music_id,artists,album_name,track_name,popularity from spotify_music1
where popularity NOT IN(52,62,69);

-- 14.Write a query to fetch data where artists starts from z
select music_id,artists from spotify_music1
where artists LIKE 'Z%';

-- 15.write a query to fetch top 5 record from table
select * from spotify_music1
limit 5;

-- 16.Write a query to show top 5 highest popularity of music.
select music_id,artists,album_name,popularity from spotify_music1
order by popularity desc limit 5;

-- 17.concat two columns artists and album_name
select concat(artists,'  ',album_name) from spotify_music1;

-- 18.Write a query to gives artists name in uppar
select upper(artists) as UpperCase,artists from spotify_music1 limit 10;

-- 19.Use of maths functions
select danceability,ceiling(danceability) from spotify_music1 limit 10;

-- abs() function
select loudness,abs(loudness) from spotify_music1 limit 10;

-- 20.date_function
select now() as current_date_time;


select curdate();

-- 21.Aggreagate functions
-- Write a query to fetch number of artists in table.
select count(artists) as number_of_artists from spotify_music1;

select min(popularity) from spotify_music1;
-- Write a query to show highest popularity in table.
select max(popularity) as highest_popularity from spotify_music1;

-- 22.write a query to fetch number of album_name done by artists
select artists,count(album_name) as no_of_album from spotify_music1
group by artists;

-- 23.Write a query to fetch artists name whose number of albums are more than 2.
select artists,count(album_name)as no_of_album from spotify_music1
group by artists
having count(album_name)>2;

-- 24.write a query to find highest popularity of album using subquery.
select artists,album_name,popularity from spotify_music1
Where popularity=(select max(popularity) from spotify_music1);

-- 25.write a query to find 2nd highest popularity of album using subquery.
select artists,album_name,popularity from spotify_music1
where popularity=(select max(popularity) from spotify_music1 
where popularity <(select max(popularity) from spotify_music1));

 -- 2nd highest popularity of album using subquery with order by clause
select artists,album_name,popularity from spotify_music1 
where popularity <(select max(popularity) from spotify_music1)
order by popularity desc limit 1;


-- 26.write a query to find the artists whose album name and track name should match with music id 10 or 44 using subquery.
select music_id,artists,album_name,track_name,popularity from spotify_music1
where (album_name,track_name) in (
select album_name,track_name from spotify_music1
where music_id in(10,44));

-- 27.joins
create table music_details1(ID int,music_name varchar(50),
foreign key(ID) references spotify_music(id));
desc music_details1;

select * from music_details1;

-- Write a query to find music_id,id,artists,popularity and music_name.
select spotify_music1.music_id,music_details1.id,spotify_music1.artists,spotify_music1.popularity,music_details1.music_name
from spotify_music1
inner join music_details1
on spotify_music1.music_id=music_details1.id;

-- left outer join
select spotify_music1.music_id,music_details1.id,spotify_music1.artists,spotify_music1.popularity,music_details1.music_name
from spotify_music1
LEFT join music_details1
on spotify_music1.music_id=music_details1.id;

-- right outer join
select spotify_music1.music_id,music_details1.id,spotify_music1.artists,spotify_music1.popularity,music_details1.music_name
from spotify_music1
right join music_details1
on spotify_music1.music_id=music_details1.id;


-- full outer join
select spotify_music1.music_id,music_details1.id,spotify_music1.artists,spotify_music1.popularity,music_details1.music_name
from spotify_music1
LEFT join music_details1
on spotify_music1.music_id=music_details1.id
UNION
select spotify_music1.music_id,music_details1.id,spotify_music1.artists,spotify_music1.popularity,music_details1.music_name
from spotify_music1
RIGHT join music_details1
on spotify_music1.music_id=music_details1.id;

-- cross join
select music_details1.id,spotify_music1.artists,spotify_music1.popularity
from spotify_music1 CROSS JOIN music_details1;

-- create view
create view detailView1 as select music_id,album_name,artists from spotify_music1
where music_id<21;
select * from detailView1;






 
 
 

 




