function score = ENDURANCE_SCORE()
   passed_technical_inspection = true; %True if IN 12 is passed
   no_dnf_or_dq = true; %True if the team finishes endurance without DNF or DQ
   below_T_max = true; %True if the team's time is below T_max
   T_team = 0; %The team's elapsed time
   T_max = 0; %1.333 times the corrected elapsed time of the fastest vehicle


   score = 0;
   if passed_technical_inspection == true && no_dnf_or_dq == true
        score = score + 25;
   end
   if passed_technical_inspection == true && below_T_max == true
        score = score + 225*((T_max/T_team - 1)/0.333);
   end
end