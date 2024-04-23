class Car {

  //Car body
  float xPositionCB1=745;
  float xPositionCB2=820;
  float xPositionCB3=920;
  float xPositionCB4=950;
  float xPositionCB5=790;

  //Wheels
  float xPositionW1=815;
  float xPositionW2=930;
  float xPositionW3=815;
  float xPositionW4=930;

  //Window
  float xPositionWI1=915;
  float xPositionWI2=870;
  float xPositionWI3=870;
  float xPositionWI4=940;

  //Headlights
  float xPositionH=971;

  //Attributes
  float xPosition;
  float yPosition;
  float speed;

  //Speechbox
  float xPosition1=1000;
  float xPosition2=1080;
  float xPosition3=1100;
  float xPosition4=1070;
  float xPosition5=1020;

  //Constructor
  Car() {
    xPosition=25;
    yPosition=height/2;
    speed=2;
  }

  //Functions
  void display() {
    size(1280, 720);

    pushMatrix();
    translate(-928, 200);
    scale(1.05);
    //Car Body
    noStroke();
    fill(#D3212A); //Red
    rect(xPositionCB1, 245, 250, 65);
    quad(xPositionCB2, 185, xPositionCB3, 185, xPositionCB4, 250, xPositionCB5, 250);

    //Wheels
    stroke(#404040);// Darker grey
    strokeWeight(4);
    fill(#5D5D5D); //Dark grey
    ellipse(xPositionW1, 318, 55, 55);
    ellipse(xPositionW2, 318, 55, 55);
    noStroke();
    fill(#404040); //Darker grey
    ellipse(xPositionW3, 318, 30, 30);
    ellipse(xPositionW4, 318, 30, 30);

    //Window
    noStroke();
    fill(#E8F4FA); //Very light blue
    quad(xPositionWI1, 192, xPositionWI2, 192, xPositionWI3, 245, xPositionWI4, 245);

    //Headlights
    noStroke();
    fill(#FFE72E); //Yellow
    rect(xPositionH, 245, 17, 17);
    popMatrix();
  }
  
    void speechBox() {
    pushMatrix();
    translate(-950, 25);
    noStroke();
    fill(255); //White
    rect(xPosition1, 260, 120, 70);
    triangle(xPosition2, 330, xPosition3, 330, xPosition4, 360);
    /*
    //Reference for speech box
    rect(1000, 260, 120, 70);
    triangle(1080, 330, 1100, 330, 1070, 360);
    */

    fill(#D3212A);
    textFont(arial);
    textSize(25);
    text("%!#@&", xPosition5, 304);
    popMatrix();
  }

  void move() {
    //Car Body
    xPositionCB1 = xPositionCB1 + speed;
    xPositionCB2 = xPositionCB2 + speed;
    xPositionCB3 = xPositionCB3 + speed;
    xPositionCB4 = xPositionCB4 + speed;
    xPositionCB5 = xPositionCB5 + speed;

    //Wheels
    xPositionW1 = xPositionW1 + speed;
    xPositionW2 = xPositionW2 + speed;
    xPositionW3 = xPositionW3 + speed;
    xPositionW4 = xPositionW4 + speed;

    //Window
    xPositionWI1 = xPositionWI1 + speed;
    xPositionWI2 = xPositionWI2 + speed;
    xPositionWI3 = xPositionWI3 + speed;
    xPositionWI4 = xPositionWI4 + speed;

    //Headlights
    xPositionH = xPositionH + speed;
    
    //Speechbox
    xPosition1 = xPosition1 + speed;
    xPosition2 = xPosition2 + speed;
    xPosition3 = xPosition3 + speed;
    xPosition4 = xPosition4 + speed;
    xPosition5 = xPosition5 + speed;
  }
}
