if (other.can_harm and bbox_bottom > 0)
{
	audio_play_sound(sfx_enemyhit,1,0)
	if (!other.is_super_bullet) instance_destroy(other)	
	instance_destroy()	
}