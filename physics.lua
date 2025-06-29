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
        player.jump_time = 0
        obj.y -= 1
    end
end