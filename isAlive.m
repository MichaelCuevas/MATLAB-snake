function [updated_alive] = isAlive(snake,snake_alive)
%isAlive checks to see if the snake is alive
%   checks whether the snakes head is touching a boundary or any part of
%   its own body

if size(snake,1) > 1 %checks to see if the snake size is bigger than 1
    for r = 2:size(snake,1) %checks to see if the head of the snake is touching
        %any other parts of the snake
        if snake(1,1) == snake(r,1) & snake(1,2) == snake(r,2)
            snake_alive = 0 %if it is, then the snake is dead
        end
    end
end
if snake(1,1) <= 1 | snake(1,1) >= 40 %checks to see if the snake is touching the border
    snake_alive = 0;
end
if snake(1,2) <= 1 | snake(1,2) >= 40 %does the same as the above statement
    snake_alive = 0;
end
updated_alive = snake_alive; %updates the snake_alive variable in Snake_driver.m
end

