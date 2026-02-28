SELECT * FROM hospital_data;


-- 1️. Total Number of Patients
SELECT  sum( `Patients Count` )  AS Total_Patients
FROM hospital_data ;

-- 2. Average Number of Doctors per Hospital

SELECT Hospital_Name ,AVG(`Doctors Count`)
FROM hospital_data
GROUP BY Hospital_Name;

-- 3. Top 3 Departments with Highest Patients

SELECT  Hospital_Name , `Patients Count`  
FROM hospital_data
ORDER BY `Patients Count` DESC;

-- 4. Hospital with Maximum Medical Expenses
SELECT Hospital_Name, SUM(`Medical Expenses`) AS Maximum
FROM hospital_data
GROUP BY Hospital_Name 
ORDER BY Maximum DESC
LIMIT 1;

-- 5. Daily Average Medical Expenses
select AVG(`Medical Expenses`/datediff(
   STR_TO_DATE(`Discharge Date` ,'%d-%m-%y'),
   STR_TO_DATE(`Admission Date` , '%d-%m-%y') 
   ) ) AS DailyAverage_Madical
FROM hospital_data;

-- 6. Longest Hospital Stay

SELECT Hospital_Name, MAX(datediff(
   STR_TO_DATE(`Discharge Date` ,'%d-%m-%Y'),
   STR_TO_DATE(`Admission Date` , '%d-%m-%Y') 
   ) ) AS Longest_Stay
FROM hospital_data
GROUP BY Hospital_Name
ORDER BY Longest_stay DESC
LIMIT 1;   
   

-- 7. Total Patients Per City
SELECT Location , sum(`Patients Count`)
FROM hospital_data
GROUP BY Location;

-- 8. Average Length of Stay Per Department
SELECT Hospital_Name, AVG(DATEDIFF(
    STR_TO_DATE(`Discharge Date`, '%d-%m-%Y'),
    STR_TO_DATE(`Admission Date`, '%d-%m-%Y')
    ) )AS Avg_Patients
FROM hospital_data
GROUP BY Hospital_Name;

-- 9 Indentify the Department with the Lowest Number of Patients
SELECT Hospital_Name , `Patients Count`
FROM hospital_data
ORDER BY `Patients Count` 
LIMIT 1;













