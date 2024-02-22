/// @description 在此处插入描述 
// 你可以在此编辑器中写入代码 


var cam = view_get_camera(0);

if (!surface_exists(self.light_surface)) {
    viewWidthHalf = camera_get_view_width(cam) * 0.25;
	viewHeightHalf = camera_get_view_height(cam) * 0.25;
    
    self.light_surface = surface_create(viewWidthHalf, viewHeightHalf);
}

surface_set_target(self.light_surface);
draw_clear(#000020);
camera_apply(cam);

gpu_set_blendmode(bm_subtract);

var scale = 2 + 0.125 * sin(current_time / 300);
var sprite = spr_light;

with (oTroch) {
    draw_sprite_ext(sprite, 0, self.x, self.y, scale, scale, 0, c_white, 1);
}

with (oPlayer) {
    draw_sprite_ext(sprite, 0, self.x, self.y, scale, scale, 0, c_white, 1);
}

gpu_set_blendmode(bm_normal);

surface_reset_target();





