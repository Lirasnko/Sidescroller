var colTop = instance_place(x, y - 2, OCollider);
var colBot = instance_place(x, y + 2, OCollider);
var colLeft = instance_place(x - 2, y, OCollider);
var colRight = instance_place(x + 2, y, OCollider);

if (colLeft > 0) {
	image_angle = 270;
}
if (colRight > 0) {
	image_angle = 90;
}
if (colBot > 0) {
	image_angle = 0;
}
if (colTop > 0) {
	image_angle = 180;
}

if (image_angle == 0) {
	stream = instance_create_layer(x, y - 50, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 82, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 114, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 146, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y - 178, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 90) {
	stream = instance_create_layer(x - 50, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 82, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 114, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 146, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x - 178, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 180) {
	stream = instance_create_layer(x, y + 50, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 82, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 114, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 146, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x, y + 178, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}
if (image_angle == 270) {
	stream = instance_create_layer(x + 50, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 82, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 114, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 146, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = instance_create_layer(x + 178, y, "PropsFront", OStream);
	stream.image_angle = image_angle;
	stream.image_xscale = image_xscale;
	stream.image_yscale = image_yscale;
	stream = noone;
}