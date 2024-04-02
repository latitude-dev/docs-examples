select type,
       count(distinct id) as count_titles,
from { ref('visualizations/base') }
group by 1
order by 1 asc