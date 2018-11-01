function [new_snake,x1,y1] = snake_update(snake,d,x,y)
%snake_update updates position of snake
%depending on the direction, changes elements of the snake array so they
%move to the spot in front of them

if d == 28 %if the snake is moving left
    x = x-1; %updates head x coordinate
    for n = size(snake,1):-1:2 %makes each element in the snake array follow the one before it
        
        snake(n,2) = snake(n-1,2);
        snake(n,1) = snake(n-1,1);
        
    end
end
if d == 29 %if the snake is moving right
    x = x+1; %updates head x coordinate
    for n = size(snake,1):-1:2 %makes each element in the snake array follow the one before it
        
        snake(n,2) = snake(n-1,2);
        snake(n,1) = snake(n-1,1);
    end
end
if d == 30; %if the snake is moving up
    y = y-1; %updates head y coordinate
    for n = size(snake,1):-1:2 %makes each element in the snake array follow the one before it
        
        snake(n,2) = snake(n-1,2);
        snake(n,1) = snake(n-1,1);
    end
end
if d == 31; %if the snake is moving down
    y = y+1; %updates head y coordinate
    for n = size(snake,1):-1:2 %makes each element in the snake array follow the one before it
        
        snake(n,2) = snake(n-1,2);
        snake(n,1) = snake(n-1,1);
    end
end

new_snake = snake;
x1 = x;
y1 = y;

end

