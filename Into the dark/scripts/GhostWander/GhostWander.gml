// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function GhostWander(){
sprite_index = sprMove;

	if ((x == xTo) && (y == yTo)) || (timePassed > enemyWanderDistance / enemySpeed)
	{
		hSpeed = 0;
		vSpeed = 0;
	
		if (image_index < 1)
		{
			image_speed = 0.0;
			image_index = 0;
		}
	
		if (++wait >= waitDuration)
		{	
			enemyWanderDistance = random_range(0, 45);
			wait = 0;
			timePassed = 0;
			dir = point_direction(x,y,xstart,ystart) + irandom_range(-45, 45);
			xTo = x + lengthdir_x(enemyWanderDistance, dir);
			yTo = y + lengthdir_y(enemyWanderDistance, dir)
		
		}
	}
	else 
	{
		timePassed++;
		var _distanceToGo = point_distance(x,y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
		if (_distanceToGo < enemySpeed) _speedThisFrame = _distanceToGo;
		dir = point_direction(x,y,xTo,yTo);
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
		if (hSpeed != 0) image_xscale = sign(hSpeed);
	
	
		var _collided = EnemyTileCollision();
	}
	//if (++aggroCheck >= aggroCheckDuration)
	//{
		//aggroCheck = 0;
		//if (instance_exists(oPlayer)) && (point_distance(x,y,oPlayer.x,oPlayer.y) <= enemyAggroRadius)
		//{
			//state = ENEMYSTATE.CHASE;
			
		//}
	//}
}