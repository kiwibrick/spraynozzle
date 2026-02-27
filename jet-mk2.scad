$fn=180;

thread();

difference()
{
body();
taper();
jet();
}
shoulder();
module thread()
translate([0,0,-4.2])
rotate([180,0,0])
import("thread.stl");

module body()
translate([0,0,0])
cylinder(40,13,7,center=false);

module taper()
translate([0,0,0])
cylinder(20,10.7,1.5,center=false);

module jet()
cylinder(60,2,2,center=false);

module shoulder()
difference()
{
{translate([0,0,-6])
cylinder(6,13,13,center=false);}
{translate([0,0,-7])
cylinder(7,10.7,10.7,center=false);}
}

