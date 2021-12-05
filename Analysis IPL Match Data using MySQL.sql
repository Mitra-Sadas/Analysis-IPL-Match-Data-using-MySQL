# Percentage of wins of each bidder in the order of highest to lowest percentage.

select ibd.bidder_id,bidder.bidder_name,count(bid_status)/No_of_bids*100 Win_percentage,ibp.remarks from ipl_bidding_details ibd
join ipl_bidder_points ibp
on ibp.BIDDER_ID=ibd.BIDDER_ID
join ipl_bidder_details bidder
on bidder.BIDDER_ID=ibp.BIDDER_ID
where bid_status='won'
group by ibd.bidder_id,bid_status
order by win_percentage desc;

# number of matches conducted at each stadium with stadium name, city from the database.
use ipl;
select s.stadium_id,stadium_name, city,count(status) No_of_Matches from ipl_match_schedule ims
join ipl_stadium s
on s.stadium_id=ims.stadium_id
where status='completed'
group by s.stadium_id,stadium_name, city;



# In a given stadium,  percentage of wins by a team which has won the toss


select st.stadium_id,stadium_name,
if(toss_winner=match_winner,team_id1,team_id1) team,
t.team_name,
sum(if (toss_winner=match_winner,1,0))/count(*)*100 win_percentage 
from ipl_match im
join ipl_match_schedule ims
on im.match_id=ims.match_id
join ipl_stadium st
on st.stadium_id=ims.stadium_id
join ipl_team t
on t.team_id=im.team_id1
group by st.stadium_id,stadium_name,team,t.team_name;



# total bids along with bid team and team name.

select bid_team, team_name,no_of_bids from ipl_bidder_points bp
join ipl_bidding_details bidd
on bp.bidder_id= bidd.bidder_id
join ipl_team it
on it.team_id=bidd.bid_team
group by bid_team, team_name;


# the team id who won the match as per the win details.


select match_id,Team_won,Team_name,win_details
from (select match_id,if(match_winner=1,team_id1,team_id2) Team_won ,win_details
from ipl_match m)t
join ipl_team it
on it.team_id=team_won;


# total matches played, total matches won and total matches lost by team along with its team name.

select it.team_id,team_name,sum(matches_played) total_matches,sum(matches_won) total_matches_won,sum(matches_lost) total_matches_lost 
from ipl_team it
join ipl_team_standings ist
on ist.team_id=it.team_id
group by it.team_id,team_name;


# bowlers for Mumbai Indians team.

select it.team_id,team_name,tp.player_id,player_name,player_role from ipl_team_players tp
join ipl_player ip
on ip.player_id=tp.player_id
join ipl_team it
on it.team_id=tp.team_id
where player_role='Bowler' and team_name='Mumbai Indians';


# checking	how many all-rounders are there in each team, Displaying the teams with more than 4 
#all-rounder in descending order.

select it.team_id,team_name,sum(if(player_role='all-Rounder',1,0)) No_of_all_Rounders from ipl_team_players tp
join ipl_player ip
on ip.player_id=tp.player_id
join ipl_team it
on it.team_id=tp.team_id
group by it.team_id,team_name
having No_of_all_Rounders>4;


