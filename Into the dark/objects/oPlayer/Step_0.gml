//Get Player Input
key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_activate = keyboard_check_pressed(ord("E"));
key_attack = keyboard_check_pressed(ord("J"));
key_item = keyboard_check(ord("Q"));
key_roll = keyboard_check_pressed(vk_shift);

inputDirection = point_direction(0,0,key_right - key_left,key_down - key_up); 
inputMagnitude = (key_right - key_left != 0) || (key_down - key_up != 0);

//Movement
hsp = lengthdir_x(inputMagnitude * walkspeed, inputDirection);
vsp = lengthdir_y(inputMagnitude * walkspeed, inputDirection);

x = x + hsp;
y = y + vsp;

//Update Sprite Index
var _oldSprite = sprite_index;
if (inputMagnitude != 0)
{
	direction = inputDirection;
	sprite_index = spriteRun;
}else sprite_index = spriteIdle;
if(_oldSprite != sprite_index) localFrame = 0;

//Update Image Index
PlayerAnimateSprite();