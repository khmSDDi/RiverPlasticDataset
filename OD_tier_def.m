%Tier Definition

switch tier
    case 0
            index=0;
    case 1 %0-Plastic, 1-Plastic Bottle, 2-Plastic Bag
        if index>2
            index=0;
        end
    case 2 %0-Plastic, 1-Plastic Bottle, 2-Plastic Bag, 
        % 3-Food Containers/Cutlery, 4-Plastic Straw
        if index>4
            index=0;
        end
    case 3 %0-Plastic, 1-Plastic Bottle, 2-Plastic Bag, 
        % 3-Food Containers/Cutlery, 4-Plastic Straw, 
        % 5-Transparent Bag, 6-Food Wrappers
        if index>6
            index=0;
        end    
end


%tier 4 is the default tier
% 
% 4 %0-Plastic, 1-Plastic Bottle, 2-Plastic Bag, 
% 3-Food Containers/Cutlery, 4-Plastic Straw, 
% 5-Transparent Bag, 6-Food Wrappers, 
% 7-BottleCaps/Containers, 8-Polystyrene, 9-Tetrapak