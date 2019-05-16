//POLA DASAR ROK DEPAN
import processing.svg.*;

void setup(){
  size(500, 750);
  background(255);
  beginRecord(SVG, "svg/output.svg");
  noLoop();
  smooth();
}

void draw(){
  beginShape();
    vertex(50,50);
    vertex(25, 500);
    curveVertex(25, 500);
    curveVertex(118, 508);
    curveVertex(193, 508);
    curveVertex(285, 500);
    vertex(285, 500);
    vertex(260, 50);
    curveVertex(260, 50);
    curveVertex(201, 60);
    vertex(201, 60);
    vertex(193, 110);
    vertex(186, 60);
    curveVertex(186, 60);
    curveVertex(156, 60);
    vertex(156, 60);
    vertex(156, 508);
    vertex(156, 60);
    curveVertex(186, 60);
    curveVertex(126, 60);
    vertex(126, 60);
    vertex(118, 110);
    vertex(111, 60);
    curveVertex(111, 60);
    curveVertex(50, 50);
    vertex(50, 50);
    
    vertex(40,40);
    vertex(15, 510);
    curveVertex(15, 510);
    curveVertex(118, 518);
    curveVertex(193, 518);
    curveVertex(295, 510);
    vertex(295, 510);
    vertex(270, 40);
    curveVertex(270, 40);
    curveVertex(194, 50);
    curveVertex(118, 50);
    curveVertex(40, 40);
    vertex(40, 40);
  endShape();
}






  
