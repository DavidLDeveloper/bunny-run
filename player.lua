--❎🐱⬆️⬇️⬅️➡️
function move_player()
    if btn(➡️) then
        player.x += player.speed
        player.flip = true
        player.running = true
    elseif btn(⬅️)then
        player.x -= player.speed
        player.flip = false
        player.running = true
    else
        player.running = false
        player.sp=1
    end
end

function anim_player()
    	player.sp = player.sp + .1
	if player.sp > 2.9 then
		player.sp = 1
	end
end

function draw_player() 
	spr(player.sprites[flr(player.sp)], player.x, player.y, 2,2, player.flip)

end
