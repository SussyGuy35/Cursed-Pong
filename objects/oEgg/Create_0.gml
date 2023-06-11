broken = false

image_index = 0

function broke(bullet)
{
	if (!broken)
	{
		audio_play_sound(sfx_explosion,1,0)
		broken = true
		image_index = 1
		oGame.egg -= 1
		if (bullet.is_super_bullet) instance_destroy(bullet)
	}
}