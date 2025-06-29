--❎🐱⬆️⬇️⬅️➡️
function _init()
	grav = 2
	player = {
		running=false,
		jumping=false,
		jump_time=0,
		x=80,
		y=10,
		dy=0,
		sprites={7,5},
		j_sprites={7,11},
		sit_sprite=9,
		size=12,
		sp=1,
		speed=2,
		flip=false,s
	}
	message = ""
	s = {x=96, y=104, size=8, spr=33}
end

function _update()
	local cam_x = player.x - 64 + player.size
   	local cam_y = 0
   	camera(cam_x, cam_y)
	move_player()
	anim_player()
	
end

function _draw()
	cls(12)
	map(0,0,0,0,129,16)
	print(message,player.x - 10, player.y - 10)
	draw_player()

	-- forground tests
	spr(s.spr,s.x,s.y)
	-- map(0,17,0,0,129,16)
	draw_hitbox()
end