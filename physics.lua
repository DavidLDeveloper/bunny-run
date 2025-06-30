function map_col(obj,flag)
    local x1 = (obj.x+5)/8
    local y1 = obj.y/8
    local x2 = (obj.x + obj.size -2)/8
    local y2 = (obj.y + obj.size)/8


    local a = fget(mget(x1,y1), flag)
    local b = fget(mget(x1,y2), flag)
    local c = fget(mget(x2,y2), flag)
    local d = fget(mget(x2,y1), flag)
    local e = false
    while y2 > y1 do
        if (fget(mget(x1,y1), flag)) e = true
        if (fget(mget(x2,y1), flag)) e = true
        y1 += 1
    end


    if a or b or c or d or e then
        return true
    else
        return false
    end
end

function top_col(obj,flag)
    local x1 = (obj.x+5)/8
    local y1 = obj.y/8
    local x2 = (obj.x + obj.size -2)/8

    local a = fget(mget(x1,y1), flag)
    local d = fget(mget(x2,y1), flag)

    if a or d  then
        return true
    else
        return false
    end
end

function apply_grav(obj)
    local y = obj.y
    obj.y += grav

    while map_col(obj, flag) do
        player.jumping = false
        player.jump_time = 0
        obj.y -= 1
        if(not btn(❎)) player.jump_debounce = true
    end
end

function sprite_col(obj)
    -- check if obj, and obj2 layer are colliding
    local x1 = (player.x+5) +1
    local y1 = player.y
    local x2 = (player.x + player.size -2) + 1
    local y2 = (player.y + player.size)

    local o = {x1=obj.x,y1=obj.y,x2=obj.x+obj.size,y2=obj.y + obj.size}
    
    local a = false
    local b = false
    while x1 <= x2 do
        if ( x2 >= o.x1 and x2 <= o.x2) a = true
        x2 -= 1
    end
    while y1 <= y2 do
        if ( y2 >= o.y1 and y2 <= o.y2) b = true
        y2 -= 1
    end
    return a and b


end

function draw_hitbox()
local x1 = (player.x+5)
local y1 = player.y
local x2 = (player.x + player.size -2)
local y2 = (player.y + player.size)
rect(x1,y1,x2,y2,9)
end