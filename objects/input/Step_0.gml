left = keyboard_check(ord("A")) or keyboard_check(vk_left) or (mouse_check_button(mb_left) and mouse_x < room_width/2)
right = keyboard_check(ord("D")) or keyboard_check(vk_right) or (mouse_check_button(mb_left) and mouse_x > room_width/2)
start_game = keyboard_check_pressed(vk_enter) or mouse_check_button(mb_left)