-- names table
SELECT * 
FROM baby_names_db.names;

-- joined names and regions table
SELECT *
FROM names n
JOIN regions r
USING (state);

-- total no. of babies named
SELECT sum(births) babies_named
FROM names;

-- distinct number of baby names in the dataset
SELECT count(DISTINCT(Name)) no_of_babynames
FROM names;

-- number of babies by their gender
SELECT Gender, sum(births) no_of_babies
FROM names
GROUP BY Gender
ORDER BY Gender DESC;

-- TOP 10 most common names
SELECT name, sum(births) total_babies_named
FROM names
GROUP BY name
ORDER BY total_babies_named DESC
LIMIT 10 ;

-- TOP 10 least common names
SELECT name, sum(births) total_babies_named
FROM names
GROUP BY name
ORDER BY total_babies_named ASC
LIMIT 10 ;

-- most common baby names by region
SELECT *
FROM(SELECT region, name, birth_no, rank () over (PARTITION BY region ORDER BY birth_no desc) rnk
      FROM (SELECT r.region, n.name, sum(births) birth_no
	        FROM names n
            JOIN regions r
            USING (state)
	        GROUP BY r.region, n.name
	        ORDER BY birth_no desc) dv)dt
WHERE dt.rnk = 1;

-- most common baby names by state
SELECT *
FROM(SELECT *, RANK () OVER (PARTITION BY state ORDER BY birth_no desc) rnk
      FROM (SELECT state, name, sum(births) birth_no
	        FROM names 
	        GROUP BY state, name
	        ORDER BY birth_no desc) dv)dt
WHERE dt.rnk = 1;

-- most comon baby name by gender
SELECT *
FROM(SELECT *, RANK () OVER (PARTITION BY gender ORDER BY birth_no DESC) rnk
      FROM (SELECT name, gender, sum(births) birth_no
	        FROM names 
	        GROUP BY name, gender
	        ORDER BY birth_no DESC) dv)dt
WHERE dt.Gender = 'f'
ORDER BY birth_no DESC;

SELECT *
FROM(SELECT *, RANK () OVER (PARTITION BY gender ORDER BY birth_no DESC) rnk
      FROM (SELECT name, gender, sum(births) birth_no
	        FROM names 
	        GROUP BY name, gender
	        ORDER BY birth_no DESC) dv)dt
WHERE dt.Gender = 'm'
ORDER BY birth_no DESC;

-- most common baby name by year
SELECT *
FROM(SELECT *, RANK () OVER (PARTITION BY Year ORDER BY birth_no desc) rnk
      FROM (SELECT name, Year, sum(births) birth_no
	        FROM names 
	        GROUP BY name, Year
	        ORDER BY birth_no desc) dv)dt
WHERE dt.rnk = 1;


-- total number of births (m/f) by year
SELECT nt.year, n.gender, sum(n.births) total_births, round(sum(n.births) /nt.total_births_total * 100,1) percentage, nt.total_births_total
FROM (SELECT year, sum(births) total_births_total
	  FROM names
      GROUP BY Year
      ORDER BY total_births_total DESC) nt 
JOIN names n
USING (year)
GROUP BY nt.year, n.gender
ORDER BY nt.total_births_total DESC, total_births DESC ;

SELECT gender, round(avg(percentage),1) pcnt
FROM (SELECT nt.year, n.gender, sum(n.births) total_births, round(sum(n.births) /nt.total_births_total * 100,1) percentage, nt.total_births_total
FROM (SELECT year, sum(births) total_births_total
	  FROM names
      GROUP BY Year
      ORDER BY total_births_total DESC) nt 
JOIN names n
USING (year)
GROUP BY nt.year, n.gender
ORDER BY nt.total_births_total DESC, total_births DESC) nnt 
GROUP BY gender
ORDER BY pcnt DESC;













