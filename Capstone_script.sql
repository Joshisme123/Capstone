--Just to get a row count and see my data
select * 
from NBA_Player_Stats nps 

-- I wanted to see how age would show up when averaged
select  DISTINCT  (Player||" "|| Season),avg (age),Season
FROM NBA_Player_Stats nps 
group by Player 
order by Season 

--Comparing stats to make sure my data is accurate
select  *  
from NBA_Player_Stats nps 
where player is 'Trae Young' 
order by Season 

--Query to create my all NBA csv
SELECT  DISTINCT  (Player||" "|| Season),
player, 
pos 'Position', 
mp 'Minutes_Played',
pts 'Points',
fga 'Field_Goal_Attempts',
"FG%"  'Field_Goal_Percentage',
"3PA" '3_Point_Attempts',
"3P%" '3_Point_Percentage',
"2PA" '2_Point_Attempts',
"2P%" '2_Point_Percentage',
FTA 'Free_Throw_Attempts',
"FT%" 'Free_Throw_Percentage',
TRB 'Total_Rebounds',
STL 'Steals',
BLK 'Blocks',
season,
Pos 'Position',
Tm 'Team',
AST 'Assists'
from NBA_Player_Stats nps 
where MP > 5
order by Player 

--Query for All-Star csv
Select player, 
pos 'Position', 
mp 'Minutes_Played',
pts 'Points',
fga 'Field_Goal_Attempts',
"FG%"  'Field_Goal_Percentage',
"3PA" '3_Point_Attempts',
"3P%" '3_Point_Percentage',
"2PA" '2_Point_Attempts',
"2P%" '2_Point_Percentage',
FTA 'Free_Throw_Attempts',
"FT%" 'Free_Throw_Percentage',
TRB 'Total_Rebounds',
STL 'Steals',
BLK 'Blocks',
season,
Pos 'Position',
AST 'Assists'
from AllStar  
