/* Piece 6
     OO
   OOO
*/ 

$fn = 100; //Set Resolution 

sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
pieceColor = "Green";

module piece6(){
//rods
translate([0,-rodLength,0]) rotate([0,90,0])cylinder(h=rodLength, r=rodRadius, center = false); 
translate([rodLength,-rodLength,0]) rotate([0,90,0])cylinder(h=rodLength, r=rodRadius, center = false); 
translate([(rodLength*2),0,0]) rotate([90,0,0])cylinder(h=rodLength, r=rodRadius, center = false);
translate([(rodLength*2),0,0]) rotate([0,90,0])cylinder(h=rodLength, r=rodRadius, center = false); 

//spheres 
translate([0,-rodLength,0]) sphere(r=sphereRadius, center = true); 
translate([rodLength,-rodLength,0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*2),-rodLength,0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*2),0,0]) sphere(r=sphereRadius, center = true); 
translate([(rodLength*3),0,0]) sphere(r=sphereRadius, center = true); 
}

color(pieceColor) piece6(); 