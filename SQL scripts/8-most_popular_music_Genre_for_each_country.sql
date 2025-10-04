with popular_genre as
(SELECT invoice.billing_country,count(invoice_line.quantity) as quantity,
genre.name as genre, row_number() over(partition by invoice.billing_country 
order by count(invoice_line.quantity) desc) as row_num 
FROM project.invoice_line
join invoice on invoice.invoice_id = invoice_line.invoice_id
join customer on customer.customer_id = invoice.customer_id
join track on track.track_id = invoice_line.track_id
join genre on track.genre_id = genre.genre_id
group by 1,3
order by 2 desc)
select * from popular_genre where row_num <=2;