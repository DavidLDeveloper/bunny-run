--❎🐱⬆️⬇️⬅️➡️
function move_player()
    apply_grav(player,0)
    if btn(➡️) then
        player.x += player.speed
        player.flip = true
        player.running = true
        if map_col(player, 0) then player.x -= player.speed end
    elseif btn(⬅️)then
        player.x -= player.speed
        player.flip = false
        player.running = true
        if map_col(player, 0) then player.x += player.speed end
    else
        player.running = false
        player.sp=1
    end

    if player.jumping and not btn(❎) then player.jump_time = 30 end
    if btn(❎) and (player.jumping or player.jump_debounce)  then
        if (player.jump_time == 0) sfx(0)
        player.jumping = true
        player.jump_debounce = false
        if player.jump_time < 18 then
            player.jump_time += 2
            player.y -= 5
            -- check for top collision
            if top_col(player, 0) then
                player.jump_time=30
                while top_col(player, 0) do
                    player.y += 1
                end

            end
        
        end
    end
end

function anim_player()
    	player.sp = player.sp + .1
	if player.sp > 2.9 then
		player.sp = 1
	end
end

function draw_player() 
    if player.jumping then
        spr(player.j_sprites[flr(player.sp)], player.x, player.y, 2,2, player.flip)
    elseif player.running then
        spr(player.sprites[flr(player.sp)], player.x, player.y, 2,2, player.flip)
    else
        spr(player.sit_sprite, player.x, player.y, 2,2, player.flip)
    end
end
