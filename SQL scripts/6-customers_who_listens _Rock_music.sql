SELECT distinct first_name,last_name_,email FROM project.customer
join invoice on customer.customer_id = invoice.invoice_id
join invoice_line on invoice.invoice_id = invoice_line.invoice_id
where track_id in (SELECT track_id FROM project.track
  join genre on track.genre_id = genre.genre_id
  where genre.name like 'Rock');