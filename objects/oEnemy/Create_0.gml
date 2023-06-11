shot_cycle = round(random_range(0.5,2) * FRAMESEC)
alarm[0] = shot_cycle


function shoot(){
	audio_play_sound(sfx_enemyshot,1,0)
	instance_create_layer(x,y,layer,oEnemyBullet)
}