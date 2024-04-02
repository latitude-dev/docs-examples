select title,
       release_year,
       runtime,
       imdb_score,
       main_country
from { ref('visualizations/base') }
limit 10