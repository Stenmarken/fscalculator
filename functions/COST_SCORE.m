function cost = COST_SCORE()
    P_team = 70; %The score awarded to the team
    P_max = 65; %The highest score awarded to any team not participating 
    %in the finals
    no_cost_final = false; %True if there is no cost finals

    
    if no_cost_final == true
        cost = P_team;
    else 
        cost = 95 * (P_team/P_max);
    end
end