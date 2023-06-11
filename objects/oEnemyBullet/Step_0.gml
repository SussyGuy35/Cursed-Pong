if (bbox_left <= 0)
{ 
	hspeed = abs(hspeed)
	audio_stop_sound(sfx_pong)
	audio_play_sound(sfx_pong,1,0)
}
if (bbox_right >= room_width)
{
	hspeed = -abs(hspeed)
	audio_stop_sound(sfx_pong)
	audio_play_sound(sfx_pong,1,0)
}
if (place_meeting(x,y,oPad) or place_meeting(xprevious,yprevious,oPad)) 
{
	vspeed = -abs(vspeed)
	hspeed += oPad.dir
	if (!can_harm)
	{
		can_harm = true
		audio_stop_sound(sfx_pong)
		audio_play_sound(sfx_pong,1,0)
	}
}