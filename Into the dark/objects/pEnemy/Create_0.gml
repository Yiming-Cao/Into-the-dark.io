/// @description 在此处插入描述 
event_inherited();

state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
aggroCheck = 0;
aggroCheckDuration = 5;
collisionMap = layer_tilemap_get_id(layer_get_id("collision"));

timePassed = 0;
waitDuration = 60;
wait = 0;

sprMove = sGhost;

enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;



