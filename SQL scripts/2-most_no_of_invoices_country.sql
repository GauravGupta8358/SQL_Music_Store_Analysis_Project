SELECT count(*) as count,billing_country FROM project.invoice
group by billing_country
order by count desc limit 1