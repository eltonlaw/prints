HOLE_DIAMETER = 116;
WALL_HEIGHT = 10;
TRAY_BOTTOM_HEIGHT = 5;

module open_sphere(height, inner_radius, wall_size) {
    difference() {
        cylinder(h=height+wall_size, r=inner_radius+wall_size, center=true);
        translate([0, 0, - wall_size]) {
            cylinder(h = height, r=inner_radius, center=true);
        }
    }
}

open_sphere(WALL_HEIGHT + TRAY_BOTTOM_HEIGHT, HOLE_DIAMETER / 2, TRAY_BOTTOM_HEIGHT);
