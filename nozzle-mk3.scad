$fn=180;

difference()
{
    union()
    {
{
union()
{
thread();
{
difference()
{
body();
cut();
tcut();
}
}
}
corner();}}
holes();
}


module thread()
rotate([180,0,0])
import("thread.stl");

module body()
translate([0,0,-20.5])
cylinder(60,14,25,center=false);

module cut()
translate([0,0,0])
cylinder(36,10.5,22,center=false);

module tcut()
translate([0,0,-25])
cylinder(25,13,13,center=false);

module corner()
{
translate([0,0,37])
{
rotate_extrude(convexity = 10)
  translate([15, 0, 0])
      polygon(points=[[0,0],[7.071,0],[7.071,-7.071]]);}}
      
 module holes()
      translate([0,0,30])
      {
      for ( i=[0:20:360]) {
    rotate([0,0,i])
    translate([0,15])
    cylinder(10,0.5,0.5);
}
}