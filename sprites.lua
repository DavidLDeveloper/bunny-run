function draw_items()
    -- draw strawberries and carrots from array
    for i,s in ipairs(sprites) do
        -- todo: check if on screen?
        if (s.visible) spr(s.spr,s.x,s.y)
    end
end

function check_items_col()
    -- check and handle items collision
    for i,s in ipairs(sprites) do
        -- todo: check if on screen?
        if s.visible then 
            
            if sprite_col(s) then
                handle_item(i)
            end
        end
    end
end

function handle_item(i)
    sprites[i].visible = false
    sfx(1)
end

function draw_forground_sprites()
    -- draw foreground flowers, grass, etc.
end