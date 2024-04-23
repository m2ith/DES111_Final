//Moving Cars

PImage redCar;

road myRoad;
CarR myCarR;
CarG myCarG;
CarB myCarB;

void setup() {
  size(1280, 720);
  background(255); //White
  
  redCar = loadImage("Red_Car.png");

  myRoad = new road();
  myCarR = new CarR();
  myCarG = new CarG();
  myCarB = new CarB();
}

void draw() {
  background(255); //White
  
  //cursor(redCar);

  //Sky
  noStroke();
  fill(#C7EAFA); //Light blue
  rect(0, 0, width, 255);

  //Buildings
  //Buildings (from left to right)
  //1
  noStroke();
  fill(#767575); //Even darker grey
  rect(0, 0, 250, 255);
  //2
  noStroke();
  fill(#959595); //Dark grey
  rect(250, 0, 300, 255);
  //3
  noStroke();
  fill(#898989); //Darker grey
  rect(550, 0, 250, 255);
  //4
  noStroke();
  fill(#838383); //Dark grey
  rect(790, 0, 250, 255);
  //5
  noStroke();
  fill(#767575); //Even darker grey
  rect(1040, 0, 250, 255);
  
  //Sidewalk
  noStroke();
  fill(#AAAAAA); //Grey
  rect(0, 185, width, 45);

  myRoad.display();

  //Red car
  myCarR.display();
  myCarR.move();
  //myCarR.reverseDirection();

  //Green car
  myCarG.display();
  myCarG.move();
  //myCarG.reverseDirection();

  //Blue car
  myCarB.display();
  myCarB.move();
  //myCarB.reverseDirection();
}
