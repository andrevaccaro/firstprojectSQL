-- How the lenght of (stay) impacts the average mental health diagnostic scores of the international students present in the study. First project using PostgreSQL.
SELECT
  stay, COUNT(*) AS count_int,
  ROUND(AVG(todep), 2) AS average_phq,
  ROUND(AVG(tosc), 2) AS average_scs,
  ROUND(AVG(toas), 2) AS average_as
FROM students
WHERE stay <> 0
  AND inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC
LIMIT 9;