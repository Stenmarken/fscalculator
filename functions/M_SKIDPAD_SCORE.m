function score = M_SKIDPAD_SCORE()
    T_max = 0; % The team s best manual mode time including penalties.
    T_team = 0; % 1.25 times the time of the fastest manual mode vehicle 
    % including penalties.
    no_dnf_or_dq = true; % Is true if the team manages one run run without 
    % DNF or DQ
    below_T_max = true; % Is true if the team's best manual mode time is
    % below T_max

    
    score = 0;
    if no_dnf_or_dq == true
        score = score + 3.5;
    end
    if below_T_max == true
        score = score + 46.5*(((T_max/T_team)^2 - 1)/0.5625);
    end    
end