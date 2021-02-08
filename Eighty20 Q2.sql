SELECT k.descr [ageband], COUNT(*) [count], STRING_AGG(s.id, ', ') [ids]
FROM keys k
INNER JOIN survey s on k.lookup = s.ageband
GROUP BY k.descr