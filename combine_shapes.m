function [new_map] = update_shape(map,snake,a,b)
%Updates the game board
%   resets the map matrix and adds the snake and food matrices to the map
%   matrix

colormap colorcube

map = zeros(40,40); %resets game state
map([1:40],[1:40]) = 12; %sets the background color to purple
map(1:2:39,[1,40]) = 56; %next 4 lines make the border black and white checkers
map(2:2:40,[1,40]) = 64;
map([1,40],1:2:39) = 56;
map([1,40],2:2:40) = 64;

for n = 1:(size(snake,1)) %adds the snake to the map matrix
    map(snake(n,1),snake(n,2)) = 64;
end
map(a,b) = 56; %adds the food to the map matrix

new_map = map; %passes map variable to Snake_driver.m

end


