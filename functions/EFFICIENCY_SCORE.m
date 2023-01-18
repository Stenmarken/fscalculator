function score = EFFICIENCY_SCORE()
    %General requirements
    received_points_endurance = true; % True if team got points in endurance
    valid_elapsed_time = true; % True if the uncorrected elapsed endurance 
    % time does not exceed 1.333  times the uncorrected elapsed time of the 
    % fastest vehicle

    % ONLY FOR CV
    valid_fuel_mass = true; % The measured fuel mass of vehicles using E85 
    % fuel is divided by 1.45 to be comparable to the vehicles using 98 RON

    E = 0; % For CV: corrected used fuel mass. For EV: used energy
    T = 0; % Uncorrected elapsed driving time
    EF_team = T^2*E; % The team's efficiency factor
    EF_min = 0; % The lowest efficiency factor of all teams which were 
    % considered for efficiency. If it's not given, use the formula for
    % EF_team
    EF_max = 1.5*EF_min;

    
    score = 0;
    if (received_points_endurance && valid_elapsed_time && valid_fuel_mass)
        score = score + 75*((EF_max - EF_team)/(EF_max-EF_min));
    end
end