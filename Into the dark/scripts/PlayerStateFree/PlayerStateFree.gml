// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function PlayerStateFree(){
if(!global.gamePaused){
//Movement
hsp = lengthdir_x(inputMagnitude * walkspeed, inputDirection);
vsp = lengthdir_y(inputMagnitude * walkspeed, inputDirection);

PlayerCollision();

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

if(key_activate)
{
	var _activateX = lengthdir_x(10, direction);
	var _activateY = lengthdir_y(10, direction);
	activate = instance_position(x+_activateX, y+_activateY, pEntity);
	
	if(activate == noone || activate.entityActivateScript == -1)
	{
		state = PlayerStateRoll;
		moveDistanceRemaining = distanceRoll
	}
	else
	{
		ScriptExecuteArray(activate.entityActivateScript, activate.entityActivateArgs);
		
		if(activate.entityNPC)
		{
			with (activate)
			{
				direction = point_direction(x,y,other.x,other.y);
				image_index = CARDINAL_DIR
			}
	}
		
}
}

}
}