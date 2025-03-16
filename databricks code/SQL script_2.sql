-- Count the number of athletes from  each country:

SELECT NOC,COUNT(*) AS TotalAthletes FROM athletes
GROUP BY NOC 
ORDER BY TotalAthletes DESC;

--  Calculate the Total medals won by each country:
SELECT Team_NOC, SUM(Gold) AS Total_Gold , SUM(Silver) AS Total_Silver ,
SUM(Bronze) AS Total_Bronze FROM medals
GROUP BY Team_NOC
ORDER BY Total_Gold DESC;

-- calculate the average number of entries by gender for each discipline:
SELECT Discipline, AVG(Female) AS Avg_Female_Entries, 
AVG(Male) AS Avg_Male_Entries FROM entriesgender
GROUP BY Discipline;
