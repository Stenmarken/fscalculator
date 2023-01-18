function cost = COST_SCORE()
    P_team = 70; % The score awarded to the team
    P_max = 65; % The highest score awarded to any team not participating 
    % in the finals
    no_cost_final = false; % True if there is no cost finals
    non_finalist = true; % True if the team is NOT in the final
    
    cost = 0;
    if no_cost_final == true
        cost = P_team;
    elseif non_finalist == true
        cost = 95 * (P_team/P_max);
    end
    % If there is a cost final and the team is a finalist then the score
    % is between 100 and 96.
end