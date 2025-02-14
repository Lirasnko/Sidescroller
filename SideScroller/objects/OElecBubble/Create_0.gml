var backLight = instance_create_layer(x, y, "PropsBack", OElecBubbleLightBack);
var frontLight = instance_create_layer(x, y, "PropsFront", OElecBubbleLightFront);

backLight.image_angle = image_angle;
frontLight.image_angle = image_angle;