//if (mouse_check_button_pressed(mb_left)) instance_create_layer(mouse_x,mouse_y,layer,oEnemyBullet)

if (game_started)
{
	if (!won)
	{
		if (egg && instance_number(oEnemy) == 0 && instance_number(oBoss) == 0)
		{
			audio_play_sound(sfx_nextwave,1,0)
			if (wave < number_of_wave)
			{
				wave ++
				showing_message = FRAMESEC
				message_to_show = "Wave\n" + string(wave)
				show_debug_message("wave: " + string(wave))
				enemy_wave(wave)
			}
			else
			{
				showing_message = FRAMESEC
				message_to_show = "BOSS!!!"
				instance_create_layer(room_width/2,0,layer,oBoss)
			}
		}

		if (egg == 0)
		{
			showing_message = 1
			message_to_show = "Game\nover\n\nPress\nEnter"
		
			if (input.start_game)
			{
				reset_game()
			}
		}
	}
	else
	{
		showing_message = 1
		message_to_show = "You\nWon\n\nPress\nEnter"
		
		if (input.start_game)
		{
			reset_game()
		}
	}
}
else
{
	showing_message = 1
	message_to_show = "Cursed\nPong\n\nPress\nEnter"
	
	if (input.start_game) game_started = true
}