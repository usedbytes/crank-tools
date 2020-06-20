// SPDX-License-Identifier: GPL-3.0-or-later
include <threads.scad>

nut_w = 22;
nut_h = 8;
thread_r = 22 / 2;
thread_h = 10;

difference() {
	union() {
		cylinder(r = (nut_w / 2) / cos(30), $fn = 6, h = nut_h);
		translate([0, 0, nut_h - 0.1])
			metric_thread (diameter=22, pitch=1, length=thread_h + 0.1, leadin = 1);
	}
	translate([0, 0, -0.1]) metric_thread (diameter=8 + 0.4, pitch=1, length=nut_h + thread_h + 0.2, internal = true);
};
