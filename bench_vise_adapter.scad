jaws_length = 74.62; // side that's perpindicular to lead screw
jaws_height = 17.44; // top to bottom measurement

jaw_thickness = 13.69;
clamp_at_width = 7; // expected size at which this gets clamped at

wings_length = 2 * jaw_thickness + clamp_at_width; // how far out the sides reach
wings_width = 5;

top_width = 30;

module wing() {
    rotate([0, 90, 0]) {
        translate([-wings_length/2, -jaws_height/2, jaws_length/2]) {
            cube([wings_length, jaws_height, wings_width]);
        }
    }
}

module open_box(x, y, z, a) {
    difference() {
        cube([x, y, z], center=true);
        translate([0, 0, z/2]) {
            cube([x-a, y+1, z], center=true);
        }
    }
}

union() {
    // The bar that gets clamped
    cube([jaws_length, jaws_height, clamp_at_width], center=true);
    // Side wings to prevent it from sliding off perpindicular to jaws
    wing();
    mirror([1,0,0]) {
        wing();
    }
    // top
    translate([0, jaws_height/2 + top_width/2, 0])
    rotate([0, 90, 90]) {
        // cube([wings_length, jaws_length + (wings_width * 2), top_width], center=true);
        open_box(wings_length, jaws_length + (wings_width * 2), top_width, 5);
    }
}
