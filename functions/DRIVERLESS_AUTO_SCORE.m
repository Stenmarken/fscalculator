function score = DRIVERLESS_AUTO_SCORE()
    no_dnf_or_dq = true; % True if the team has one run without DNF or DQ
    below_T_max = true; % True if T_team_total is less than T_max
    T_team_1 = 0; % The team's time including penalties of run 1.
    T_team_2 = 0; % The team's time including penalties of run 2.
    T_max = 0; % The time for driving the lap at 6 m/s
    T_min = 0; % The fastest T_team_total of all teams

    T_team_total = min(T_team_1, mean([T_team_1, T_team_2]));
    
    % For runs that are DNF or DQ and for runs with a T_team_i above T_max, 
    % T_team_i is set to T_max.

    score = 0;
    if no_dnf_or_dq == true
        score = score + 10;
    end
    if below_T_max == true
        score = score + 90*((T_max-T_team_total)/(T_max-T_min));
    end
end