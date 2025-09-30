select * from [dbo].[insurance]
--1.Basic Stats
SELECT COUNT(*) AS Total_Customers, 
       ROUND(AVG(age),2) AS Avg_Age,
       ROUND(AVG(bmi),2) AS Avg_BMI,
       ROUND(AVG(charges),2) AS Avg_Charges
FROM insurance
--2 Total Charges

SELECT SUM(charges) AS Total_Charges FROM insurance;

--3 Smoker vs Non-smoker
SELECT smoker, ROUND(AVG(charges),2) AS Avg_Charges
FROM insurance
GROUP BY smoker;
--4 Charges by Age Group

SELECT 
    CASE 
        WHEN age < 30 THEN '<30'
        WHEN age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '50+' 
    END AS Age_Group,
    ROUND(AVG(charges), 2) AS Avg_Charges
FROM insurance
GROUP BY 
    CASE 
        WHEN age < 30 THEN '<30'
        WHEN age BETWEEN 30 AND 50 THEN '30-50'
        ELSE '50+' 
    END
ORDER BY Avg_Charges DESC;


--5.Charges by BMI Category
SELECT 
    CASE 
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi < 25 THEN 'Normal'
        WHEN bmi < 30 THEN 'Overweight'
        ELSE 'Obese'
    END AS BMI_Category,
    ROUND(AVG(charges),2) AS Avg_Charges
FROM insurance
GROUP BY
    CASE 
        WHEN bmi < 18.5 THEN 'Underweight'
        WHEN bmi < 25 THEN 'Normal'
        WHEN bmi < 30 THEN 'Overweight'
        ELSE 'Obese'
    END 
ORDER BY Avg_Charges DESC;
