# Medical-Insurance-data-analyst-project
# 🏥 Medical Insurance Analysis Project  

##  Overview  
This project analyzes a **Medical Insurance dataset** to identify key factors influencing medical costs such as **age, BMI, smoking habits, gender, and region**.  
The analysis was performed using **SQL queries** for data exploration and **Power BI (with DAX)** for building an interactive dashboard.  

---

##  Tools & Technologies  
- **SQL Server** → Data extraction and analysis  
- **Power BI** → Dashboard creation and DAX calculations  



##  SQL Analysis  

### Sample Queries Used  

1. **Basic Stats**
```sql
SELECT COUNT(*) AS Total_Customers, 
       ROUND(AVG(age),2) AS Avg_Age,
       ROUND(AVG(bmi),2) AS Avg_BMI,
       ROUND(AVG(charges),2) AS Avg_Charges
FROM insurance;
```

2. **Total Charges**
```sql
SELECT SUM(charges) AS Total_Charges FROM insurance;
```

3. **Smoker vs Non-Smoker**
```sql
SELECT smoker, ROUND(AVG(charges),2) AS Avg_Charges
FROM insurance
GROUP BY smoker;
```

4. **Charges by Age Group**
```sql
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
```

5. **Charges by BMI Category**
```sql
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
```

---

##  Power BI Dashboard  

The dashboard provides:  
- **KPIs**: Total Customers, Total Charges, Avg Age, Avg Charges  
- **Charts**:  
  - Smoker vs Non-Smoker average charges  
  - Charges by gender  
  - Charges by BMI categories  
  - Charges by region  
  - Age group analysis  

 **Key Insights**:  
- Smokers have significantly higher medical charges than non-smokers.  
- Obese individuals incur the highest average charges.  
- Customers aged **50+** have greater healthcare expenses.  
- Regional differences exist in average medical charges.  

---

##  Dashboard Preview  
![Dashboard Screenshot]
https://screenrec.com/share/RtTw29pqyQ
screen recording of project link
https://screenrec.com/share/LjArifQH8v
---

##  Conclusion  
This project demonstrates how **SQL + Power BI** can be used together to extract insights and create an interactive dashboard for **healthcare insurance cost analysis**.  

---

##  Project Structure  
```
├── SQL_Scripts/           # SQL queries for analysis
├── PowerBI_Dashboard.pbit # Power BI dashboard file
├── README.md              # Project documentation
```

---

##  Project Description  

**Medical Insurance Analysis (SQL + Power BI)**  
- Performed **data analysis on healthcare insurance dataset** using SQL queries and DAX functions.  
- Built an **interactive Power BI dashboard** showcasing KPIs (Avg Charges, Total Customers, Age, BMI).  
- Derived insights such as **smokers and obese customers have significantly higher medical costs**.  

👉 To view the working Power BI Dashboard (.pbit file):

Go to the repository → Click on the .pbit file → Select View Raw → It will download automatically.
---
