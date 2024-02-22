/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 

audio_play_sound(jumpscare_sound, 0, false)
instance_create_layer(x, y, "jumpscare", oBearjump);
instance_destroy();

instance_create_layer(x, y, "Player", oBearjump);



