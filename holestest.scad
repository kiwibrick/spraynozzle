$fn=180;

difference()
{
cube([10,27,3]);
translate([5,5,-1])
cylinder(5,0.75,0.75,center=false);
translate([5,10.5,-1])
cylinder(5,1,1,center=false);
translate([5,16,-1])
cylinder(5,1.25,1.25,center=false);
translate([5,22,-1])
cylinder(5,1.5,1.5,center=false);
}