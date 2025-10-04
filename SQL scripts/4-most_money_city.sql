SELECT billing_city,sum(total) as total_value FROM project.invoice
group by billing_city
order by total_value desc limit 1;