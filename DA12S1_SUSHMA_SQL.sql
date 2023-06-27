create database students;

use students;

select gender,sum(`math score`) as sum_of_math
from students
group by gender;

select `race/ethnicity`,sum(`reading score`)
from students
group by `race/ethnicity`order by sum(`reading score`) desc;

select `parental level of education`,sum(`math score`)
from students
group by`parental level of education`order by sum(`math score`) desc;

