function [new_snake] = snake_add(snake,d)
%snake_add Updates the snake matrix
%   Checks what direction the snake is moving and then adds a piece of food
%   to the correct index based on that direction

%plays a noise when the snake eats a piece of food
[y,Fs] = audioread('snake_bite.wav');
sound(y,Fs);

%condition for if the snake is moving 
if d == 28
    snake(end+1,1) = snake(end,1);
    snake(end,2) = snake(end-1,2)+1;
end
if d == 29
    snake(end+1,1) = snake(end,1);
    snake(end,2) = snake(end-1,2)-1;
end
if d == 30
    snake(end+1,1) = snake(end,1)+1;
    snake(end,2) = snake(end-1,2);
end
if d == 31
    snake(end+1,1) = snake(end,1)-1;
    snake(end,2) = snake(end-1,2);
end
new_snake = snake;
end

