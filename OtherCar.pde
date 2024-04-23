class OtherCar {

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

  //Constructor
  OtherCar() {
    xPosition=25;
    yPosition=height/3.5;
    speed=3.5;
  }

  //Functions

  void display() {

    pushMatrix();
    translate(-928, 280);
    scale(1.05);
    //Car Body
    noStroke();
    fill(#4198DE); //Blue
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
  }
}
