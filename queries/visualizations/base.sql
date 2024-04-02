select *,
       string_to_array(ltrim(rtrim(production_countries, ']'), '['), ', ') as clean_countries,
       replace(clean_countries[1], '''', '') as main_country
from read_csv_auto('queries/netflix.csv')
where release_year between 2010 and 2024
order by imdb_score desc
