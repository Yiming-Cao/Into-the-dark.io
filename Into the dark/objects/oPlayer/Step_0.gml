//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_activate = keyboard_check_pressed(vk_space);
key_attack = keyboard_check_pressed(ord("J"));
key_item = keyboard_check(ord("Q"));
key_roll = keyboard_check_pressed(vk_shift);

inputDirection = point_direction(0,0,key_right - key_left,key_down - key_up); 
inputMagnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

script_execute(state);


depth = -bbox_bottom;