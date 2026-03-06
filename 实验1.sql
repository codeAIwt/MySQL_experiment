CREATE DATABASE IF not exists movie_db;
USE movie_db;

CREATE table Actors
	(
    A_id INT PRIMARY KEY,
    name CHAR(50) not null,
    age INT,
    Gender CHAR(4)
    );

CREATE TABLE Movie
	(
     id INT auto_increment primary KEY,
     title VARCHAR(50),
	 duration INT,
     act_id INT,
     year INT,
     director varchar(200),

	FOREIGN KEY (act_id) references Actors(A_id)
 	);

INSERT into Actors(A_id,name,age,Gender) VALUES
  (1,'千寻',12,'女'),
  (2,'哪吒',3,'女'),
  (3,'三叶',17,'女');
 INSERT INTO Movie(title,year,duration,act_id,director) VALUES
  ('千与千寻',2001,124,1,'宫崎骏'),
  ('哪吒之魔童降世',2019,111,2,'饺子'),
  ('你的名字',2016,3,106,'新海诚');
  
ALTER TABLE Movie  
 ADD COLUMN rating DECIMAL(3,1);
 
UPDATE Movie SET rating=9.4 where title='千与千寻';
UPDATE Movie SET rating=8.4 where title='哪吒之魔童降世';
UPDATE Movie SET rating=8.5 where title='你的名字';

alter table Actors
 ADD COLUMN birthplace CHAR(3),
 ADD CONSTRAINT fk_birthplace FOREIGN KEY (birthplace) REFERENCES country(code);

 
UPDATE Actors SET birthplace='JPN' where act_id=1;
UPDATE Actors SET birthplace='CHN' where act_id=2;
UPDATE Actors SET birthplace='JPN' where act_id=3;

SELECT * FROM Actors LIMIT 1000;

