{% test greater_than_column(model, column_name, greater_than_column_name) %}

select {{column_name}}, {{greater_than_column_name}}, count(1) as num_occurrences
from {{model}}
where {{column_name}} <= {{greater_than_column_name}}
group by 1, 2

{% endtest %}