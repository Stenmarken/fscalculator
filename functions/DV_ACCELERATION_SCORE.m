function score = DV_ACCELERATION_SCORE()
    BELOW_25_SECONDS = true; %A run worse than 25 seconds results in a DQ
    NO_DNF_OR_DQ = true; %Is true if the team manages one run run without 
    %DNF or DQ
    R_DV_Team = 0; %The ranking of team’s best driverless time including 
    % penalties within the best driverless times including penalties of all other teams
    N_all = 0; %The number of teams who finished at least one manual or 
    %driverless run without DNF or DQ


    if BELOW_25_SECONDS == true && NO_DNF_OR_DQ 
        score = 75*((N_all + 1 - R_DV_Team)/N_all);
    end
end