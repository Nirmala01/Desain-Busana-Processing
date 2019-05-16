//POLA BADAN DEPAN
import processing.svg.*;

void setup(){
  size(500, 500);
  background(255);
  beginRecord(SVG, "svg/output.svg");
  noLoop();
  smooth();
}

void draw(){
  beginShape();
    vertex(65, 70);
    curveVertex(65, 70);
    curveVertex(65, 70);
    curveVertex(75, 130);
    curveVertex(50, 150);
    curveVertex(50, 150);
    vertex(50, 150);
    vertex(55, 260);
    vertex(100, 260);
    vertex(110, 200);
    vertex(120, 260);
    vertex(200, 260);
    vertex(210, 200);
    vertex(220, 260);
    vertex(265, 260);
    vertex(270, 150);
    curveVertex(270, 150);
    curveVertex(270, 150);
    curveVertex(245, 130);
    curveVertex(255, 70);
    curveVertex(255, 70);
    vertex(195, 50);
    curveVertex(195, 50);
    curveVertex(195, 50);
    curveVertex(175, 60);
    curveVertex(145, 60);
    curveVertex(125, 50);
    curveVertex(125, 50);
    vertex(65, 70);
    
  endShape();
}


  
