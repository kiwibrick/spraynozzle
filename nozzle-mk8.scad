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
holes2();
holes3();
holes4();
holes5();
holes6();
outcorner();
}


module thread()
rotate([180,0,0])
import("thread.stl");

module body()
translate([0,0,-20.5])
cylinder(60,14,25,center=false);

module cut()
translate([0,0,0])
cylinder(33,10.5,22,center=false);

module tcut()
translate([0,0,-25])
cylinder(25,13,13,center=false);

module corner()
{
translate([0,0,34])
{
rotate_extrude(convexity = 10)
  translate([15, 0, 0])
      polygon(points=[[0,0],[7.5,0],[6,-6]]);}}
      
module outcorner()
{
translate([0,0,40])
{
rotate_extrude(convexity = 10)
  translate([22, 0, 0])
      polygon(points=[[0,0],[6,0],[6,-9]]);}}      
      
 module holes()
      translate([0,0,26])
      {
      for ( i=[0:20:360]) {
    rotate([-1.2,0,i])
    translate([0,16])
    cylinder(14,1.3,0.75);
}
}

module holes2()
      translate([0,0,26])
      {
      for ( i=[10:20:370]) {
    rotate([-0.9,0,i])
    translate([0,13])
    cylinder(14,1.3,0.75);
      }}
      
 module holes3()
      translate([0,0,26])
      {
      for ( i=[0:20:360]) {
    rotate([-0.6,0,i])
    translate([0,10])
    cylinder(14,1.3,0.75);
      }}  
   
 module holes4()
      translate([0,0,26])
      {
      for ( i=[10:40:370]) {
    rotate([-0.3,0,i])
    translate([0,7])
    cylinder(14,1.3,0.75);
      }} 
      
  module holes5()
      translate([0,0,26])
      {
      for ( i=[7.5:60:370]) {
    rotate([0,0,i])
    translate([0,4])
    cylinder(14,1.3,0.75);
      }}   
      
module holes6()
      translate([0,0,26])
      {
      for ( i=[10:20:370]) {
    rotate([-1.5,0,i])
    translate([0,18.1])
    cylinder(14,1.3,0.75);
      }}   