select 
round(coalesce(count(distinct accepter_id, requester_id)/count(distinct sender_id, send_to_id), 0), 2) as accept_rate
from RequestAccepted, FriendRequest;

