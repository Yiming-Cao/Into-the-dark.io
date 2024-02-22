// v2.3.0的脚本资产已更改，请参见\ n // https://help.yoyogames.com/hc/en-us/articles/360005277377
function CalAttack(){
	mask_index = argument0;
	var hitByAttackNow = ds_list_create();
	var hits = instance_place_list(x,y,pEntity,hitByAttackNow,false);
	if (hits > 0)
	{
		for (var i = 0; i < hits; i++)
		{
			var hitID = hitByAttackNow[| i];
			if (ds_list_find_index(hitByAttackNow, hitID) == -1)
			{
				ds_list_add(hitByAttack, hitID);
				with (hitID)
				{
					
					image_blend = c_red;
				}
				
			}
		}
		
	}
	
	
	ds_list_destroy(hitByAttackNow);
	mask_index = sPlayer;
	
}