$fn=180;

thread();

difference()
{
body();
taper();
jet();
}
shoulder();
//sleeve();

module thread()
translate([0,0,-4.2])
rotate([180,0,0])
import("38thread3.stl");

module body()
translate([0,0,0])
cylinder(40,13,7,center=false);

module taper()
translate([0,0,0])
cylinder(20,8.35,1.5,center=false);

module jet()
cylinder(60,2.5,2.5,center=false);

module shoulder()
difference()
{
{translate([0,0,-4.5])
cylinder(4.5,13,13,center=false);}
{translate([0,0,-7])
cylinder(7,8.35,8.35,center=false);}
}

module sleeve()
difference()
{
{translate([0,0,-19.2])
cylinder(15,13,13,center=false);}
{translate([0,0,-20])
cylinder(15,8.35,8.35,center=false);}
}
