function bpp = BPP_SCORE()
    %SET THE VARIABLES
    P_team = 70; %The score awarded to the team
    P_max = 65; %The highest score awarded to any team not participating 
    %in the finals
    related_business_plan = true; %True if the business plan relates to
    %the areas listed in S.1.1.1


    score = 70 * P_team/P_max;
    if related_business_plan == false
        score = score - 25;
    end
    bpp = score;
end