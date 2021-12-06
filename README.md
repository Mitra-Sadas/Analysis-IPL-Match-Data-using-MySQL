# Analysis-IPL-Match-Data-using-MySQL-Aggregated Functions and Joins

Pie-in-the-Sky, is a mobile app that is used for bidding for IPL matches legally. Any registered user can bid for any of the IPL matches listed in it. New users or the bidders need to register themselves into the app by providing their mobile phone number, email id and a password. Admin will maintain the match roster and keep updating other details in the system.
The app shows the match details which includes the playing team, the venue of the match and current standing of the teams on the points table. It will display the winner at the end of the match and update the team standings in the tournament and bidder points table. System will send updates to the bidders whenever required. It will also generate the bidders' leader board.
App functionalities:
•	Predict Winner
The app allows the user to predict the winner of the match before toss happens for the match on which the user is predicting. This is dynamic as the matches can have different start time. Start time will also be influenced by disruptions like rains and other unforeseen circumstances. User will not be able to see what others users have predicted. Users can change the team bids only till the toss happens. Once the toss happens everything freezes for that match.
•	Point System
For every win, users get points. There are no negative points, meaning if the user loses the bid, he or she does not lose his/her points. Point system is very dynamic. 
At the start of the tournament when every team is at zero points, every user who wins the prediction, wins 2 points.
If the difference in the points between two teams playing, is <= 6, but > 0, then the person who predicts: 
-	Team with higher points will win, gets 2 points 
-	Team with lower points will win, gets 3 points
If the difference in the points between two teams playing is > 6 , then the person who predicts: 
-	Team with higher points will win, gets 2 points 
-	Team with lower points will win, gets 5 points

•	Leader Board
At every time the user will be able to see his/her points and his/her position in the overall user standings. He/she will also be able to see top 3 leader positions

A bidder can do following things using this app:
•	can see all the match schedules (teams, date & time of the match, location). 
•	bid on a team for a match before the start of the match 
•	can predict the match winner only till its toss occurs (Note that match start time might change due to weather conditions)
•	can bid for any number of matches
•	after bidding on a team, (s)he would be able to change his/her team before the match starts
•	bidding cannot be changed once the respective match starts
•	can cancel the bid on a match; will not lose any points
•	at any time, bidder will be able to see his/her points and his/her position in the overall bidder standings. 
•	can see top 3 leader positions
•	can see team standings anytime (i.e. their points tally)
•	cannot see any details of other bidders

Admin can do following activities:
•	manage tournament (tournament id, duration, description)
•	manage teams (description of players and team)
•	schedule and reschedule matches. Each team will play only once with remaining teams
•	edit details of match and stadium
•	update match statistics (date and match result of all the earlier matches)
•	declare the result of the match along with their scores
•	declare winner and loser along with their points
•	update team statistics (team and player performance)
•	update overview at the end of the match
•	view all the bidders bidding on a particular team and the %age of users supporting a team.

Access the dump:
1.	Create these tables in the database by running the database script provided
2.	The script also has statements to insert appropriate data into all these tables
3.	Test the successful execution of the script by selecting some rows from few tables

