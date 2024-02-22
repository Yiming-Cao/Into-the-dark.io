state = PlayerStateFree;
stateAttack = CalAttack(spr_light);
lasteState = state;
hitByAttack = -1;
collisionMap = layer_tilemap_get_id(layer_get_id("collision"));

image_speed = 0;
hsp = 0;
vsp = 0;
walkspeed = 0.8;
runspeed = 4.0;
rollspeed = 5.0;
distanceRoll = 48;

spriteRoll = sPlayerRoll;
spriteRun = sPlayerRun;
spriteStand = sPlayerStand;
spriteIdle = sPlayer;
localFrame = 0;

