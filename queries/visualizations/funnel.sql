SELECT count(t.id) as titles, concat(t.seasons, ' Seasons') as seasons
FROM read_csv_auto('queries/netflix.csv') t
WHERE t.type = 'SHOW'
AND t.seasons <= 5
GROUP BY 2
ORDER BY 2