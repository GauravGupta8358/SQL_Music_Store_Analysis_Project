SELECT customer.customer_id,customer.first_name,customer.last_name,
SUM(invoice.total) AS amount
FROM project.customer
JOIN project.invoice ON customer.customer_id = invoice.customer_id
GROUP BY 
customer.customer_id, customer.first_name, 
customer.last_name 
order by amount desc limit 1;