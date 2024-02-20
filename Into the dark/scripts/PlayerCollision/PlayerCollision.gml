// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function PlayerCollision(){
	 _collisiion = false
	//Horizonzal Tile
	if(tilemap_get_at_pixel(collisionMap, x + hsp, y))
	{
		x -= x mod TILE_SIZE;
		if(sign(hsp) == 1) {
			x += 16 - 1;
		}
		hsp = 0;
		_collisiion = true;
	}
	//Horizonzal Move Commit
	x += hsp;
	
	//Vertical Tile
	if(tilemap_get_at_pixel(collisionMap, x, y + vsp))
	{
		y -= y mod TILE_SIZE;
		if(sign(vsp) == 1) {
			y += 16 - 1;
		}
		vsp = 0;
		_collisiion = true;
	}
	//Vertical Move Commit
	y += vsp;
	
}