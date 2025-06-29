--❎🐱⬆️⬇️⬅️➡️
function _init()
	grav = .2
	player = {
		running=false,
		x=63,
		y=63,
		sprites={7,5},
		sit_sprite=9,
		sp=1,
		speed=1,
		flip=true
	}
end

function _update()
	-- player.sp = player.sp + .1
	-- if player.sp > 2.9 then
	-- 	player.sp = 1
	-- end
	move_player()
	anim_player()
end

function _draw()
	cls()
	map(0,0,0,0,16,16)
	--_update()
	--spr(player.sprites[flr(player.sp)], player.x, player.y, 2,2, player.flip)
	draw_player()
end