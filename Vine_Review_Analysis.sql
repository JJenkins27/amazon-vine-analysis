
-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT,
  verified_purchase TEXT
);

select * from vine_table

-- Create a new table where total votes > 20
select vt.review_id,
	vt.star_rating,
	vt.helpful_votes,
	vt.total_votes,
	vt.vine,
	vt.verified_purchase
into vine_votes
from vine_table vt
where vt.total_votes >= 20

-- Create a new table where helpful votes > 50% total votes
select vv.review_id,
	vv.star_rating,
	vv.helpful_votes,
	vv.total_votes,
	vv.vine,
	vv.verified_purchase
into helpful_votes 
from vine_votes vv
WHERE CAST(vv.helpful_votes AS FLOAT)/CAST(vv.total_votes AS FLOAT) >=0.5

-- Create new table where Vine = Y
select hv.review_id,
	hv.star_rating,
	hv.helpful_votes,
	hv.total_votes,
	hv.vine,
	hv.verified_purchase,
	case when hv.star_rating = 5 then 1 else 0 end as five_star
into helpful_vine_votes 
from helpful_votes hv
where hv.vine = 'Y'

-- Create new table where Vine = N
select hv.review_id,
	hv.star_rating,
	hv.helpful_votes,
	hv.total_votes,
	hv.vine,
	hv.verified_purchase,
	case when hv.star_rating = 5 then 1 else 0 end as five_star
into helpful_unpaid_votes 
from helpful_votes hv
where hv.vine = 'N'

--Determine number of 5 star reviews and percentage of 5 star reviews for vine reviews
select count(hvv.review_id) as "Total Reviews",
sum(hvv.five_star) as "Total Five Star Reviews",
round(cast(sum(hvv.five_star) as numeric)/cast(count(hvv.review_id) AS numeric),4)as "Percentage Five Star"
from helpful_vine_votes hvv

--Determine number of 5 star reviews and percentage of 5 star reviews for NOT vine reviews
select count(huv.review_id) as "Total Reviews",
sum(huv.five_star) as "Total Five Star Reviews",
round(cast(sum(huv.five_star) as numeric)/cast(count(huv.review_id) AS numeric),4)as "Percentage Five Star"
from helpful_unpaid_votes huv