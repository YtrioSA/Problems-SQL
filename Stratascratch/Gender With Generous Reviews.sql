SELECT DISTINCT ag.gender, AVG (review_score) OVER (PARTITION BY gender) FROM airbnb_reviews ar JOIN airbnb_guests ag
ON (ar.from_user=ag.guest_id) WHERE from_type='guest'
ORDER BY  AVG (review_score) OVER(PARTITION BY gender) DESC
LIMIT 1;