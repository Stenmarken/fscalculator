function score = AUTOCROSS_SCORE()
    % Note that there is AUTOCROSS_SCORE for both DV and manual
    % This is for manual. The score for DV is in DRIVERLESS_AUTO_SCORE

    no_dnf_or_dq = true; % True if the team has one run with no DNF or DQ
    T_team = 0; % The team's best time including penalties
    T_max = 0; % 1.25 times the time of the fastest vehicles including penalties

    
    score = 0;
    if no_dnf_or_dq == true
        score = score + 95.5*((T_max/T_team - 1)/0.25);
    end
end