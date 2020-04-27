screen_cover_width = 100.2;
screen_cover_height = 67;
screen_cover_depth = 2;
overhang_length = 4;

union () {
    // Cover
    cube([screen_cover_width, screen_cover_depth, screen_cover_height]);
    // Overhang to keep cover in place
    rotate([90, 0, 0]) cube([screen_cover_width, screen_cover_depth, overhang_length]);
}
