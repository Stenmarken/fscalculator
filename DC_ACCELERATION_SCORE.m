function score = DC_ACCELERATION_SCORE()
    NO_DNF_OR_DQ = true; %Is true if the team manages one run run without
    %a DNF or DQ
    BELOW_T_MAX = true; %Is true if the team's best manual mode time is
    %below T_max
    T_team = 0; %The teamTs best DV time including penalties
    T_max = 0; %2 times the time of the fastest DV vehicle including penalties

    score = 0;
    if NO_DNF_OR_DQ == true
        score = score + 3.5;
    end
    if BELOW_T_MAX == true
        score = score + 71.5*(T_max/T_team - 1);
    end
end