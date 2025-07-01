--❎🐱⬆️⬇️⬅️➡️
function _init()
	grav = 2
	player = {
		running=false,
		jumping=false,
		jump_time=0,
		x=80,
		y=90,
		dy=0,
		sprites={7,5},
		j_sprites={7,11},
		sit_sprite=9,
		size=12,
		sp=1,
		speed=2,
		flip=false,
		jump_debounce = true
	}
	message = ""
	sprites = initiate_sprites()
	-- {
    --     {x=40, y=110, size=8, spr=1,visible=true},
    --     {x=48, y=110, size=8, spr=1,visible=true},
    --     {x=64, y=110, size=8, spr=2,visible=true},
    -- }
	
	f_sprites = {}
	debugging = false
end

function _update()
	local cam_x = player.x - 64 + player.size
   	local cam_y = 0
   	camera(cam_x, cam_y)
	move_player()
	message = ""
	check_items_col()
	anim_player()

	-- message = player.jump/_debounce
	
end

function _draw()
	cls(12)
	map(0,0,0,0,129,16)
	draw_items()
	draw_player()
	if debugging then 
	draw_hitbox()
	print(message,player.x - 10, player.y - 10)
	end
end