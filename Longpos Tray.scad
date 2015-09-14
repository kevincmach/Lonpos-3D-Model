//Lonpos Tray 

//import all pieces here 

$fn = 100; //Set Resolution 

//sphere parameters 
sphereRadius = 5; //Sphere Center = True 
sphereGap = 1; 
rodLength = (sphereRadius*2) + sphereGap; //Rod Center = False 
rodRadius = 1;
numberOfRows = 0; 
pieceColor = "LightPink";
//spehere parpmeters ------------------------------- 

// tray parameters ---------------------------------
cellHeight = sphereRadius + 1; //how tall should the tray be  
cellSize = (sphereRadius * 2) +sphereGap; //will be a cube, distance from one end to another 

//cell template 
module cellTemplate(){
difference(){
    translate([0,0,-(cellHeight/2)]) cube(size = [(cellSize),(cellSize),cellHeight], center = true);
    sphere(r= sphereRadius, center = true);  
    }
}




//tray module   
module trayPiecex1(){
    difference(){
    translate([0,0,(-trayWidth/2)]) cube([trayWidth,trayWidth,(trayWidth/2)], center = true);
    sphere(r = sphereRadius, center = true); 
    }
}

//tray column 



for(numberOfRows <=5){
    cellTemplate(); 
    translate([0,(cellSize/2),0]); 
    numberOfRows = numberOfRows + 1; 
}