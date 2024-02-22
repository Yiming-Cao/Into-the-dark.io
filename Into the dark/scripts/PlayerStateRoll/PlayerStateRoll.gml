// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function PlayerStateRoll(){
hsp = lengthdir_x(rollspeed, direction);
vsp = lengthdir_y(rollspeed, direction);

moveDistanceRemaining = max(0, moveDistanceRemaining - rollspeed);
var _collided = PlayerCollision();

Sprite_index = spriteRoll;
var _totalFrames = sprite_get_number(sprite_index)/4;
image_index = (CARDINAL_DIR * _totalFrames) + ((1 - (moveDistanceRemaining / distanceRoll)) * _totalFrames);

if (moveDistanceRemaining <=0)
{
	state = PlayerStateFree;
}
}