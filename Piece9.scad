/* Piece 9
     O
    OOOO
*/ 

$fn = 100; //Set Resolution 

sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
pieceColor = "LightPink";

module piece9(){
//rods
rotate([0,90,0]) cylinder(h=rodLength ,r=rodRadius, center = false); 
translate([rodLength,0,0]) rotate([-90,0,0]) cylinder(h=rodLength ,r=rodRadius, center = false); 
translate([rodLength,0,0]) rotate([0,90,0]) cylinder(h=rodLength ,r=rodRadius, center = false); 
translate([(rodLength*2),0,0])rotate([0,90,0]) cylinder(h=rodLength ,r=rodRadius, center = false); 

//spheres
sphere(r=sphereRadius, center=true); 
translate([rodLength,0,0]) sphere(r=sphereRadius, center=true); 
translate([rodLength,rodLength,0]) sphere(r=sphereRadius, center=true); 
translate([(rodLength*2),0,0]) sphere(r=sphereRadius, center=true); 
translate([(rodLength*3),0,0]) sphere(r=sphereRadius, center=true); 
}

color(pieceColor) piece9(); 