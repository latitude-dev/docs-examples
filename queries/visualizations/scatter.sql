SELECT imdb_score, runtime
FROM read_csv_auto('queries/netflix.csv') t
WHERE t.type = 'MOVIE'
AND imdb_votes > 1000
-- GROUP BY 2
-- ORDER BY 2
LIMIT 200