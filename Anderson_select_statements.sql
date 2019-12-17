--
--  Annual Report to Donors
-- Donors and their respective circle

select 
concat(d.fname,' ' ,d.lname) as donor,
dc.title as circle


from donors d

inner join dnr_circle dc on d.dnr_circle_id=dc.circle_id 
left join donation_history dh on d.donor_id=dh.donor_id
left join events e on dh.eventid=e.eventid
left join contacts c on c.contact_id=d.contact_id
group by d.donor_id;


--
--
-- Annual Report to Donors
-- Total Amount Raised by Class

select 

c.year_of_grad as class,
sum(dh.amnt_donated) as totalAmountRaised,
round((count(*)*100)/(select count(*) from contacts tempc where 
	tempc.contact_type='alumnus/alumna')) as percent_class_participation

from donors d

inner join dnr_circle dc on d.dnr_circle_id=dc.circle_id 
left join donation_history dh on d.donor_id=dh.donor_id
left join events e on dh.eventid=e.eventid
left join contacts c on c.contact_id=d.contact_id
where
c.year_of_grad is not null

group by c.year_of_grad;



--
-- Total raised per class
-- Annual Report to Donors

select 
c.year_of_grad as class,
sum(dh.amnt_donated) as totalAmountRaised

from donors d

inner join dnr_circle dc on d.dnr_circle_id=dc.circle_id 
left join donation_history dh on d.donor_id=dh.donor_id
left join events e on dh.eventid=e.eventid
left join contacts c on c.contact_id=d.contact_id


group by c.year_of_grad;





--
-- Class Participation
-- Annual Report to Donors


select 

c.year_of_grad as class,
round((count(*)*100)/(select count(*) from contacts tempc where 
	tempc.contact_type='alumnus/alumna')) as percent_class_participation

from contacts c

group by c.year_of_grad;



-- 
-- Amount Raised by Circle
-- Monthly Report


select 
dc.title as circle,
sum(dh.amnt_donated) as totalAmountRaised

from donors d

inner join dnr_circle dc on d.dnr_circle_id=dc.circle_id 
left join donation_history dh on d.donor_id=dh.donor_id
left join events e on dh.eventid=e.eventid
left join contacts c on c.contact_id=d.contact_id
group by d.dnr_circle_id;

--
--
-- Pyaments Due Report

select 
 concat(p.fname,' ' ,p.lname) as pledge,
p.due_date
from pledges p
left join contacts c on p.contact_id=c.contact_id

where

due_date > '12/01/2019'

 group by p.pledge_id
order by p.due_date DESC;

--
--
-- Event Report

select 
 concat(d.fname,' ' ,d.lname) as donor,
e.eventTitle as 'event',
dh.amnt_donated

from donors d

left join donation_history dh on d.donor_id=dh.donor_id
left join events e on dh.eventid=e.eventid

group by d.donor_id
order by e.eventTitle;

--
--
-- Class Representative Contact List

select 
p.pledge_id,
 concat(p.fname,' ',p.lname) as 'classmates to be contacted',
 cd.phone_number as phone_number,
 cd.address as address,
 dh.amnt_donated as 'last_donated'
from pledges p

left join donors d on p.pledge_id=d.pledge_id
left join donation_history dh on d.donor_id=dh.donor_id
left join contact_details cd on cd.contact_id=d.contact_id
where 
p.`paid_infull?`='false'

group by p.pledge_id;



--
--
-- Phonothon Volunteer Contact List

select 
 concat(p.fname,' ' ,p.lname) as pledge,
p.due_date,
cd.phone_number,
cd.address,
dh.amnt_donated

from pledges p

left join donors d on d.pledge_id=p.pledge_id
left join donation_history dh on d.donor_id=dh.donor_id
left join contacts c on d.contact_id=c.contact_id
left join contact_details cd on c.contact_id=cd.contact_id

where

due_date > '12/01/2019'

 group by p.pledge_id
order by p.due_date DESC;





