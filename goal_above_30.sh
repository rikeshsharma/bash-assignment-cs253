#!/bin/bash

echo
echo "Enter Filenames"
echo
read -p 'Input file (ex england-premier-league.csv): ' fin
read -p 'Output file to be generated: ' fout

if [ -f $fin ];then
    echo $fin file found
else
    echo Input file $fin does not exists. EXITING ...
    exit
fi

echo full_name, age, birthday, birthday_GMT, league, season, position, Current_Club, minutes_played_overall, minutes_played_home, minutes_played_away, nationality, appearances_overall, appearances_home, appearances_away, goals_overall, goals_home, goals_away, assists_overall, assists_home, assists_away, penalty_goals, penalty_misses, clean_sheets_overall, clean_sheets_home, clean_sheets_away, conceded_overall, conceded_home, conceded_away, yellow_cards_overall, red_cards_overall, goals_involved_per_90_overall, assists_per_90_overall, goals_per_90_overall, goals_per_90_home, goals_per_90_away, min_per_goal_overall, conceded_per_90_overall, min_per_conceded_overall, min_per_match, min_per_card_overall, min_per_assist_overall, cards_per_90_overall, rank_in_league_top_attackers, rank_in_league_top_midfielders, rank_in_league_top_defenders, rank_in_club_top_scorer > $fout
while IFS="," read -r full_name age birthday birthday_GMT league season position Current_Club minutes_played_overall minutes_played_home minutes_played_away nationality appearances_overall appearances_home appearances_away goals_overall goals_home goals_away assists_overall assists_home assists_away penalty_goals penalty_misses clean_sheets_overall clean_sheets_home clean_sheets_away conceded_overall conceded_home conceded_away yellow_cards_overall red_cards_overall goals_involved_per_90_overall assists_per_90_overall goals_per_90_overall goals_per_90_home goals_per_90_away min_per_goal_overall conceded_per_90_overall min_per_conceded_overall min_per_match min_per_card_overall min_per_assist_overall cards_per_90_overall rank_in_league_top_attackers rank_in_league_top_midfielders rank_in_league_top_defenders rank_in_club_top_scorer
do
  if [ "$age" -gt 30 ];then
    echo $full_name, $age, $birthday, $birthday_GMT, $league, $season, $position, $Current_Club, $minutes_played_overall, $minutes_played_home, $minutes_played_away, $nationality, $appearances_overall, $appearances_home, $appearances_away, $goals_overall, $goals_home, $goals_away, $assists_overall, $assists_home, $assists_away, $penalty_goals, $penalty_misses, $clean_sheets_overall, $clean_sheets_home, $clean_sheets_away, $conceded_overall, $conceded_home, $conceded_away, $yellow_cards_overall, $red_cards_overall, $goals_involved_per_90_overall, $assists_per_90_overall, $goals_per_90_overall, $goals_per_90_home, $goals_per_90_away, $min_per_goal_overall, $conceded_per_90_overall, $min_per_conceded_overall, $min_per_match, $min_per_card_overall, $min_per_assist_overall, $cards_per_90_overall, $rank_in_league_top_attackers, $rank_in_league_top_midfielders, $rank_in_league_top_defenders, $rank_in_club_top_scorer >> $fout
  fi  
done < <(tail -n +2 $fin)
