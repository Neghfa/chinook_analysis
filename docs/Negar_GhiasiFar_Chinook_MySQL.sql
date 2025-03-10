-- 1
select il.TrackId, t.Name, sum(il.UnitPrice * il.Quantity) as TotalRevenue from invoiceline il
join track t on t.TrackId = il.TrackId
group by il.TrackId, t.Name
order by TotalRevenue desc
limit 10

-- 2 
select g.GenreId, g.Name, sum(il.Quantity) as TotalTrackSold, sum(il.UnitPrice * il.Quantity) as GenreRevenue from invoiceline il
join track t on t.TrackId = il.TrackId
join genre g on g.GenreId = t.GenreId
group by g.GenreId, g.Name
order by TotalTrackSold desc, GenreRevenue desc
limit 1

-- 3
select * from customer c
left join invoice i on i.CustomerId = c.CustomerId
where i.InvoiceId is null
-- There are no customers who haven't purchased.

-- 4
select t.AlbumId, a.Title, avg(t.Milliseconds) as AverageTrackTime from track t
join album a on a.AlbumId = t.AlbumId
group by t.AlbumId, a.Title

-- 5
select e.EmployeeId, e.firstname, e.lastname, count(InvoiceId) as TotalSales from invoice i
join customer c on c.CustomerId = i.CustomerId
join employee e on e.EmployeeId = c.SupportRepId
group by e.EmployeeId, e.firstname, e.lastname

-- 6
select c.CustomerId, c.firstname, c.lastname, count(distinct(g.GenreId)) CustomerGenreCount from customer c
join invoice i on i.CustomerId = c.CustomerId
join invoiceline il on il.InvoiceId = i.InvoiceId
join track t on t.TrackId = il.TrackId
join genre g on g.GenreId = t.GenreId
group by c.CustomerId, c.firstname, c.lastname
having CustomerGenreCount > 1

-- 7
with cte as (
select t.TrackId, t.Name, g.GenreId, sum(il.Quantity * il.UnitPrice) TotalRevenue ,
row_number() over(PARTITION BY g.GenreId ORDER by sum(il.Quantity * il.UnitPrice) desc) as Ranks
from invoiceline il
join track t on t.TrackId = il.TrackId
join genre g on g.GenreId = t.GenreId
group by t.TrackId, t.Name, g.GenreId)

select * from cte
where Ranks <= 3

-- 8
with cte as
(select year(InvoiceDate) as InvoiceYear, i.InvoiceDate,
sum(il.Quantity) as TotalTracksPerDay
from invoice i
join invoiceline il on il.InvoiceId = i.InvoiceId
group by i.InvoiceDate, InvoiceYear)

select InvoiceYear, InvoiceDate, TotalTracksPerDay,
sum(TotalTracksPerDay) over(PARTITION BY InvoiceYear order by InvoiceDate) as CumulativeTracks
from cte

-- 9
with cte as(
select CustomerId, sum(Total) as EverTotal,
avg(sum(Total)) OVER() as AverageTotal
from invoice
group by CustomerId)

select CustomerId, EverTotal from cte
where EverTotal > AverageTotal