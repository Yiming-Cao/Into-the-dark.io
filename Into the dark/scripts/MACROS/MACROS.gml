// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function MACROS(){
	#macro FRAME_RATE 60;
	#macro TILE_SIZE 16;
	#macro ROOM_START rParent
	#macro CARDINAL_DIR round(direction/90)
	
	enum ENEMYSTATE
	{
		IDLE,
		WANDER,
		CHASE,
		ATTACK,
		HURT,
		DIE,
		WAIT
	}
}