function score = TRACKDRIVE_SCORE()
    no_dnf_or_dq = true; % True if the run was not DNF or DQ
    below_T_max = true; % True if the same run was below T_max
    T_team = 0; % The team's corrected elapsed time
    T_max = 0; % 2 times the corrected elapsed time of the fastest vehicle
    num_additional_laps = 0;
    
    score = 0;
    if no_dnf_or_dq && below_T_max
        score = score + 150*((T_max/T_team) - 1);
    end
    score = score + (num_additional_laps * 5);
end