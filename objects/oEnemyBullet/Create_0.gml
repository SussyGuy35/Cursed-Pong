is_super_bullet = (irandom_range(0,35) == 35)

if (is_super_bullet) audio_play_sound(sfx_superbulletfx,1,1)

image_speed = is_super_bullet

var dir = 90 + irandom_range(-30,30)
sped = 1.5
hspeed = cos(degtorad(dir)) * sped
vspeed = sin(degtorad(dir)) * sped

can_harm = false

create_after_image_time = 0.05*FRAMESEC
alarm[0] = create_after_image_time