select * from cd.facilities;

select name, membercost from cd.facilities;

select name, membercost from cd.facilities where membercost != 0 limit 5;

select * from cd.facilities;

select facid, name, membercost, monthlymaintenance from cd.facilities where membercost < (0.02 * monthlymaintenance)
and membercost != 0;

select * from cd.facilities where name ilike '%tennis%';

select * from cd.facilities where facid in (1,5);

select * from cd.members;

select memid, surname, firstname, joindate from cd.members where joindate > '2012-09-01';

select distinct(surname) from cd.members order by surname limit 10;

select max(joindate) as signupdate from cd.members;

select count(facid) from cd.facilities where guestcost > 10;

select facid, sum(slots) as total from cd.bookings
where starttime > '2012-09-01'
group by facid
order by total;

select * from cd.bookings;

select facid, sum(slots) as totalslots from cd.bookings group by facid having sum(slots) > 1000
order by facid;

select book.starttime, faci.name from cd.facilities as faci
inner join cd.bookings as book on faci.facid = book.facid
where book.starttime between '2012-09-21 00:00:00' and '2012-09-21 23:59:59' and faci.name ilike '%tennis court%'
order by book.starttime;

select cd.bookings.starttime from cd.bookings
inner join cd.members on cd.bookings.memid = cd.members.memid
where cd.members.firstname ilike 'David%' and cd.members.surname ilike 'Farrell%';