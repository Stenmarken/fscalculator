function score = AUTOCROSS_SCORE()
    NO_DNF_OR_DQ = true; %True if the team has one run with no DNF or DQ
    T_team = 0; %The team's best time including penalties
    T_max = 0; %1.25 times the time of the fastest vehicles including penalties

    
    score = 0;
    if NO_DNF_OR_DQ == true
        score = score + 95.5*((T_max/T_team - 1)/0.25);
    end
end