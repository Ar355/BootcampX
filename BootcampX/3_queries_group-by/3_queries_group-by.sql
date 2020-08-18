SELECT cohorts.name as cohorts_name, COUNT(students.*) as Student_count
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id 
GROUP BY cohorts.name
HAVING COUNT(students.*) >= 18
ORDER BY COUNT(*) ASC;