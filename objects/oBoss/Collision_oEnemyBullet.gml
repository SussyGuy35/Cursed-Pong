if (other.can_harm)
{
	image_index = 1
	audio_play_sound(sfx_enemyhit,1,0)
	instance_destroy(other)	
	
	if (other.is_super_bullet) hp -= 3
	else hp --
	
	if (hp <= 0)
	{
		if (oGame.egg) oGame.won = true
		instance_destroy()
	}
}