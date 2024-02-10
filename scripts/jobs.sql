
--1.	How many rows are in the data_analyst_jobs table?
	--1793
SELECT COUNT(*) 
FROM data_analyst_jobs;
--2.	Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
 SELECT *
 FROM data_analyst_jobs
 LIMIT 10; 
 --- ExxonMobile
 --3.	How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
 -- 21 in TN, 27 in TN or KY
 SELECT COUNT(*) 
 FROM data_analyst_jobs
 WHERE location IN ('TN','KY');
 --4.	How many postings in Tennessee have a star rating above 4?
 -- 3 
 SELECT COUNT(*) 
 FROM data_analyst_jobs
 WHERE location IN ('TN')
 AND star_rating > 4;
 --5.	How many postings in the dataset have a review count between 500 and 1000?
 ------  151
 SELECT COUNT (*)
 FROM data_analyst_jobs
 WHERE review_count BETWEEN 500 
 AND 1000;
 --6.	Show the average star rating for companies in each state. The output should show the state as `state` and the average rating for the state as `avg_rating`. Which state shows the highest average rating?
 ----- NE
 SELECT location AS state,
 AVG(star_rating) AS avg_rating
 FROM data_analyst_jobs
 GROUP BY location
 ORDER BY avg_rating DESC;
 --7.	Select unique job titles from the data_analyst_jobs table. How many are there?
 --- 881
 SELECT COUNT(DISTINCT title)
 FROM data_analyst_jobs;
 --8.	How many unique job titles are there for California companies?
 -- 230
  SELECT COUNT(DISTINCT title)
 FROM data_analyst_jobs
 WHERE location IN ('CA');
 --9.	Find the name of each company and its average star rating for all companies that have more than 5000 reviews across all locations. How many companies are there with more that 5000 reviews across all locations?
 --  40
 SELECT company, AVG(star_rating) AS avg_rating
 FROM data_analyst_jobs
 WHERE review_count > 5000
 GROUP BY company
 ORDER BY AVG(star_rating) DESC;
 --10.	Add the code to order the query in #9 from highest to lowest average star rating. Which company with more than 5000 reviews across all locations in the dataset has the highest star rating? What is that rating?
 -- General Motors, Unilever, Microsoft, Nike
 --11.	Find all the job titles that contain the word â€˜Analystâ€™. How many different job titles are there? 
 --  774
SELECT DISTINCT (title)
FROM data_analyst_jobs
WHERE title LIKE '%Analyst%';
--12.	How many different job titles do not contain either the word â€˜Analystâ€™ or the word â€˜Analyticsâ€™? What word do these positions have in common?
-- 4, they mention Tableau
SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%Analyst%'
AND title NOT ILIKE '%Analytics%'
 
 
 
 
 