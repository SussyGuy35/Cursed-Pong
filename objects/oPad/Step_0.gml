dir = input.right - input.left

if (oGame.game_started and oGame.egg) x += sped * dir

x = clamp(x, 0 + sprite_width/2, room_width - sprite_width/2)