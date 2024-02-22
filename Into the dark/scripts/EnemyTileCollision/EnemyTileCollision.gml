// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function EnemyTileCollision(){
	_collosion = false;
	if (tilemap_get_at_pixel(collisionMap,x + hSpeed,y))
	{
		x -= x mod TILE_SIZE;
		if (sign(hSpeed) == 1) x += 4 - 1;
		hSpeed = 0;
		_collosion = true;
	}
	x += hSpeed;
	
	if (tilemap_get_at_pixel(collisionMap,x,y + vSpeed))
	{
		y -= y mod TILE_SIZE;
		if (sign(vSpeed) == 1) y += 4 - 1;
		vSpeed = 0;
		_collosion = true;
	}
	y += vSpeed;
	
	return _collosion
}