#('ABW','Aruba','North America','Caribbean',193.00,NULL,103000,78.4,828.00,793.00,'Aruba','Nonmetropolitan Territory of The Netherlands','Beatrix',129,'AW')
/*1. 查询所有电影的电影名、时长与上映日期
2. 查询年龄小于40岁的女演员的姓名和年龄
3. 查询全世界各洲（Continent）的名称
4. 查询南美洲人口数量小于1千万的国家，并按人口由多到少排序
5. 查询欧洲国家的数量
6. 查询人最多和人最少的国家的人口数量（0除外）*/
USE movie_db;
SELECT title,year,duration FROM Movie;
SELECT name, age FROM Actors WHERE age < 40 and gender='女';
SELECT DISTINCT Continent FROM country;
SELECT Name,Population FROM country WHERE Continent='South America' and Population < 10000000 ORDER BY Population DESC;
SELECT count(Code) FROM country WHERE Continent='Europe';
SELECT MAX(Population),MIN(Population) FROM country WHERE Population > 0;