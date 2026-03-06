USE world;

SELECT   
    country.Name,  
    country.IndepYear,  
    country.population,  
    COUNT(city.id) AS CityCount,  
    SUM(city.Population) AS TotalCityPopulation  
FROM   
    country  
JOIN   
    city ON country.Code = city.CountryCode  -- 假设国家和城市表通过CountryCode字段连接  
WHERE   
    SUBSTRING(country.IndepYear, 1, 3) = '199'  
GROUP BY   
    country.Name,  
    country.IndepYear,  
    country.population;
    
    
SELECT   
    DISTINCT country.Name  
FROM  
    country,countrylanguage la,countrylanguage lb 
WHERE   
	country.code = la.CountryCode AND
	la.Language = 'English' AND
    country.code = lb.CountryCode AND
    lb.Language = 'Spanish';
        
SELECT     
    country.Name AS CountryName,    
    country.capital AS CapitalName,   
    city.Population   
FROM     
    country    
JOIN     
    city ON country.Code = city.CountryCode AND country.capital = city.id 
ORDER BY 
    city.Population ASC; 
  
