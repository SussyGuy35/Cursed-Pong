#macro FRAMESEC game_get_speed(gamespeed_fps)

randomize()

instance_create_depth(x,y,depth,input)

game_started = false
won = false

wave = 0
number_of_wave = 9
egg = instance_number(oEgg)

showing_message = 0
message_to_show = ""

function reset_game(){
	oEgg.broken = false
	oEgg.image_index = 0
	instance_destroy(oEnemy)
	instance_destroy(oEnemyBullet)
	egg = instance_number(oEgg)
	won = false
	wave = 0	
}

/**
 * @func spawn_enemy(spwnxpos, spwnypos)
 * @desc Spawn enemy on a grid or sth
 * @param {real} spwnxpos x pos to spwn
 * @param {real} spwnypos y pos to spwn
 */
function spawn_enemy(spwnxpos,spwnypos){
	instance_create_layer(6 + (spwnxpos - 1)*12,-(spwnypos-1)*12,layer,oEnemy)
}

/**
 * @func enemy_wave(wave)
 * @desc Spwn enemy wave
 * @param {real} wave Enemy wave to spawn
 */
function enemy_wave(wave){
	switch wave {
		case 1:
			spawn_enemy(2,1)
			spawn_enemy(4,1)
		break
		case 2:
			spawn_enemy(1,1)
			spawn_enemy(3,1)
			spawn_enemy(5,1)
		break
		case 3:
			spawn_enemy(1,1)
			spawn_enemy(2,2)
			spawn_enemy(3,1)
			spawn_enemy(4,2)
			spawn_enemy(5,1)
		break
		case 4:
			spawn_enemy(2,1)
			spawn_enemy(2,2)
			spawn_enemy(2,3)
			spawn_enemy(4,1)
			spawn_enemy(4,2)
			spawn_enemy(4,3)
		break
		case 5:
			spawn_enemy(1,1)
			spawn_enemy(2,1)
			spawn_enemy(3,1)
			spawn_enemy(4,1)
			spawn_enemy(5,1)
			spawn_enemy(2,2)
			spawn_enemy(3,2)
			spawn_enemy(4,2)
			spawn_enemy(3,3)
		break
		case 6:
			spawn_enemy(1,1)
			spawn_enemy(1,2)
			spawn_enemy(1,3)
			spawn_enemy(2,2)
			spawn_enemy(3,1)
			spawn_enemy(3,2)
			spawn_enemy(3,3)
			spawn_enemy(4,2)
			spawn_enemy(5,1)
			spawn_enemy(5,2)
			spawn_enemy(5,3)
		break
		case 7:
			spawn_enemy(2,1)
			spawn_enemy(4,1)
			spawn_enemy(1,2)
			spawn_enemy(3,2)
			spawn_enemy(5,2)
			spawn_enemy(2,3)
			spawn_enemy(4,3)
			spawn_enemy(1,4)
			spawn_enemy(3,4)
			spawn_enemy(5,4)
			spawn_enemy(2,5)
			spawn_enemy(4,5)
			spawn_enemy(1,6)
			spawn_enemy(3,6)
			spawn_enemy(5,6)
		break
		case 8:
			spawn_enemy(1,1)
			spawn_enemy(3,1)
			spawn_enemy(5,1)
			spawn_enemy(1,2)
			spawn_enemy(3,2)
			spawn_enemy(5,2)
			spawn_enemy(1,3)
			spawn_enemy(3,3)
			spawn_enemy(5,3)
			spawn_enemy(2,4)
			spawn_enemy(4,4)
			spawn_enemy(1,5)
			spawn_enemy(3,5)
			spawn_enemy(5,5)
			spawn_enemy(2,6)
			spawn_enemy(4,6)
			spawn_enemy(1,7)
			spawn_enemy(3,7)
			spawn_enemy(5,7)
		break
		case 9:
			spawn_enemy(2,1)
			spawn_enemy(4,1)
			spawn_enemy(1,2)
			spawn_enemy(2,2)
			spawn_enemy(3,2)
			spawn_enemy(4,2)
			spawn_enemy(5,2)
			spawn_enemy(2,3)
			spawn_enemy(3,3)
			spawn_enemy(4,3)
			spawn_enemy(1,4)
			spawn_enemy(2,4)
			spawn_enemy(3,4)
			spawn_enemy(4,4)
			spawn_enemy(5,4)
			spawn_enemy(2,5)
			spawn_enemy(4,5)
			spawn_enemy(3,6)
			spawn_enemy(2,7)
			spawn_enemy(3,7)
			spawn_enemy(4,7)
		break
	}
}