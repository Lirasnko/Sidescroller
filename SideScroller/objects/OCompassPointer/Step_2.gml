x = OPlayer.x + (31 * cos(degtorad(point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY))));
y = OPlayer.y - (31 * sin(degtorad(point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY))));
image_angle = point_direction(OPlayer.x, OPlayer.y, OPlayer.nextDestinationX, OPlayer.nextDestinationY) - 90;