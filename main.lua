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
		sit_sprite=9,
		size=12,
		sp=1,
		speed=1,
		flip=false,s
	}
	message = ""
end

function _update()
	local cam_x = player.x - 64 + player.size
   	local cam_y = 0
   	camera(cam_x, cam_y)
	move_player()
	anim_player()
end

function _draw()
	cls()
	map(0,0,0,0,129,16)
	print(message)
	draw_player()
end