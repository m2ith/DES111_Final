//Final Project
//14 March 2024

PFont arial;
PFont arialBold;

PImage person1;
PImage person2;
PImage person3;
PImage person4;
PImage rText;
PImage graffiti;

int state=0; //Change slide

Car myCar;
OtherCar myOtherCar;
restaurant myRestaurant;
buildings myBuildings;
buildings2 myBuildings2;
person2 myPerson2;
person2R myPerson2R;
internmentCamp myCamp;

void setup() {
  size(1280, 720);
  background(255); //White
  arial = createFont("arial.otf", 12);
  arialBold = createFont("arialBold.otf", 12);

  myCar = new Car();
  myOtherCar = new OtherCar();
  myRestaurant = new restaurant();
  myBuildings = new buildings();
  myBuildings2 = new buildings2();
  myPerson2 = new person2();
  myPerson2R = new person2R();
  myCamp = new internmentCamp();

  person1 = loadImage("person1.png");
  //Source: https://emojigraph.org/media/social/woman-standing-light-skin-tone_1f9cd-1f3fb-200d-2640-fe0f.png
  person2 = loadImage("person2.png");
  //Source: https://i.pinimg.com/736x/f7/45/1b/f7451b31afd9e219a6ce5e90e92bf2b0.jpg
  person3 = loadImage("person3.png");
  //Source: https://emojigraph.org/media/social/man-standing-light-skin-tone_1f9cd-1f3fb-200d-2642-fe0f.png
  person4 = loadImage("person4.png");
  //Source: https://emojigraph.org/media/social/man-standing-medium-skin-tone_1f9cd-1f3fd-200d-2642-fe0f.png
  rText = loadImage("Restaurant_Text.png");
  graffiti = loadImage("graffiti.png");
}

void buttonForward() {
  noStroke();
  //Rectangle
  fill(255); //White
  rect(1221, 343, 35, 35);
  //Triangle
  fill(#D3212A); //Red
  triangle(1230, 350, 1250, 360, 1230, 370);
}

void buttonBackward() {
  noStroke();
  pushMatrix();
  translate(-1125, 0);
  //Rectangle
  fill(255); //White
  rect(1149, 343, 35, 35);
  //Triangle
  fill(#D3212A); //Red
  triangle(1175, 350, 1155, 360, 1175, 370);
  popMatrix();
}


void mousePressed() {
  if (mouseX>1230 && mouseX<1250 && mouseY>350 && mouseY<370) {
    state ++;
  }
  if (mouseX>30 && mouseX<50 && mouseY>350 && mouseY<370) {
    state --;
    /*
    //Reference for buttonBackward
     noStroke();
     //Rectangle
     fill(0); //Black
     rect(24, 343, 35, 35);
     //Triangle
     fill(#D3212A); //Red
     triangle(50, 350, 30, 360, 50, 370);
     */
  }
}

void draw() {
  background(255); //White

  if (state==0) {
    slide1();
    buttonForward();
  } else if (state==1) {
    slide2();
    buttonForward();
    buttonBackward();
  } else if (state==2) {
    slide3();
    buttonForward();
    buttonBackward();
  } else if (state==3) {
    slide4();
    buttonForward();
    buttonBackward();
  } else if (state==4) {
    slide5();
    buttonForward();
    buttonBackward();
  } else if (state==5) {
    slide6();
    buttonForward();
    buttonBackward();
  } else if (state==6) {
    slide7();
    buttonForward();
    buttonBackward();
  }
}

//SLIDE 1
void slide1() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Text
  fill(#D3212A);
  textFont(arialBold);
  textAlign(LEFT);
  String s = "Hate Crimes Against Asians & Asian Americans";
  textSize(100);
  text(s, 220, 190, 900, 520);
}

//SLIDE 2
void slide2() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Text
  fill(#D3212A);
  textFont(arialBold);
  textAlign(LEFT);
  String s = "Throughout history, Asians and Asian Americans have been physically and verbally assaulted. After the outbreak of COVID-19, there was an increased animosity against Asians and Asian Americans which resulted in an increased rate of hate crimes. Moreover, racism and discrimination against Asians and Asian Americans is commonly seen throughout everyday life such as shown through the news, social media, in person, etc.";
  textSize(35);
  text(s, 200, 170, 900, 600);
}

//SLIDE 3
void slide3() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  myCamp.display();

  //Sun
  fill(#EDCB1F); //Yellow
  ellipse(0, 0, 150, 150);

  pushMatrix();
  translate(0, -15);
  //Box behind text and footnote
  noStroke();
  fill(255); //White
  rect(90, 65, 1100, 71);

  //Text
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s = "During WW2, Japanese were imprisoned into internment camps due to the U.S. War Department fearing that Japanese Americans would act as spies for Japan.";
  //Source: https://www.britannica.com/event/Japanese-American-internment
  textSize(23.5);
  text(s, 100, 75, 1100, 100);
  popMatrix();
}

//SLIDE 4
void slide4() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Sky
  noStroke();
  fill(#C7EAFA); //Light blue
  rect(0, 0, width, height);

  //Ground
  noStroke();
  fill(#717170); //Dark grey
  rect(0, 465, width, 300);

  myBuildings2.display();

  //Pavement
  noStroke();
  fill(#AAAAAA); //Grey
  rect(0, 600, width, 120);
  fill(#A2A2A2); //Grey
  rect(0, 600, width, 40);

  //image(person2, 400, 418, 100, 222);
  myPerson2.display();
  myPerson2.move();
  myPerson2.stop();

  pushMatrix();
  scale(1.18);
  image(person3, 600, 342);
  image(person4, 665, 343);
  image(person4, 730, 343);
  popMatrix();

  if (keyPressed) {
    pushMatrix();
    translate(-548, 80);
    noStroke();
    fill(255); //White
    rect(1000, 260, 120, 70);
    triangle(1080, 330, 1100, 330, 1070, 360);
    /*
    //Reference for speech box
     rect(1000, 260, 120, 70);
     triangle(1080, 330, 1100, 330, 1070, 360);
     */

    fill(#D3212A);
    textFont(arial);
    textSize(25);
    text("%!#@&", 1020, 304);
    popMatrix();
  }

  //Profanities instructions
  fill(255);
  textFont(arial);
  textAlign(LEFT);
  String s = "Press any key for the person to yell profanities";
  textSize(12);
  text(s, 408, 635, 1100, 50);

  //Green car
  pushMatrix();
  translate(-725, 300);
  scale(1.05);
  //Car Body
  noStroke();
  fill(#51A752); //Green
  rect(745, 245, 250, 65);
  quad(820, 185, 920, 185, 950, 250, 790, 250);

  //Wheels
  stroke(#404040);// Darker grey
  strokeWeight(4);
  fill(#5D5D5D); //Dark grey
  ellipse(815, 318, 55, 55);
  ellipse(930, 318, 55, 55);
  noStroke();
  fill(#404040); //Darker grey
  ellipse(815, 318, 30, 30);
  ellipse(930, 318, 30, 30);

  //Window
  noStroke();
  fill(#E8F4FA); //Very light blue
  quad(915, 192, 870, 192, 870, 245, 940, 245);

  //Headlights
  noStroke();
  fill(#FFE72E); //Yellow
  rect(971, 245, 17, 17);
  popMatrix();
  
  //Pink car
  pushMatrix();
  translate(250, 300);
  scale(1.05);
  //Car Body
  noStroke();
  fill(#D163A3); //Pink
  rect(745, 245, 250, 65);
  quad(820, 185, 920, 185, 950, 250, 790, 250);

  //Wheels
  stroke(#404040);// Darker grey
  strokeWeight(4);
  fill(#5D5D5D); //Dark grey
  ellipse(815, 318, 55, 55);
  ellipse(930, 318, 55, 55);
  noStroke();
  fill(#404040); //Darker grey
  ellipse(815, 318, 30, 30);
  ellipse(930, 318, 30, 30);

  //Window
  noStroke();
  fill(#E8F4FA); //Very light blue
  quad(915, 192, 870, 192, 870, 245, 940, 245);

  //Headlights
  noStroke();
  fill(#FFE72E); //Yellow
  rect(971, 245, 17, 17);
  popMatrix();

  pushMatrix();
  translate(0, -15);
  //Box behind text and footnote
  noStroke();
  fill(255); //White
  rect(90, 65, 1100, 71);

  //Text
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s2 = "Additionally, after 9/11, Arabs and Muslims were attacked but also Sikhs, Indian Americans, Lebanese, and Greeks were attacked due to shared hatred against a common enemy.";
  //Source: https://link.springer.com/article/10.1007/s12103-020-09541-5
  textSize(23.5);
  text(s2, 100, 75, 1100, 100);
  popMatrix();
}

//SLIDE 5
void slide5() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Sky
  noStroke();
  fill(#C7EAFA); //Light blue
  rect(0, 0, width, 500);

  myBuildings.display();

  //Sidewalk
  noStroke();
  fill(#AAAAAA); //Grey
  rect(0, 430, width, 75);

  //Ground
  noStroke();
  fill(#717170); //Dark grey
  rect(0, 465, width, 300);

  //Road lines
  int spacing=95;
  for (int i=0; i<14; i++) {
    stroke(#FFD848); //Yellow
    strokeWeight(7);
    line(0+spacing*i, 512, 50+spacing*i, 512);
    stroke(#FFD848);
    strokeWeight(8);
    line(25+spacing*i, 591, 75+spacing*i, 591);
    stroke(#FFD848);
    strokeWeight(7);
    line(0+spacing*i, 670, 50+spacing*i, 670);
  }

  //Person
  pushMatrix();
  scale(1.02);
  image(person1, 775, 258);
  popMatrix();

  pushMatrix();
  //Red car
  myCar.display();
  myCar.move();

  //Blue car
  myOtherCar.display();
  myOtherCar.move();

  //Speech box
  myCar.speechBox();
  popMatrix();

  pushMatrix();
  translate(0, -15);
  //Box behind text and footnote
  noStroke();
  fill(255); //White
  rect(90, 65, 1100, 55);

  //Text
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s = "During the COVID lockdown, the most common type of discrimination was verbal harassment at 69.8%*.";
  textSize(23.5);
  text(s, 100, 75, 1100, 50);

  //Footnote
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s2 = "*This data is from 1,497 reports of COVID pandemic discrimintation submitted on the STOP AAPI HATE website from March 19 to April 15, 2020.";
  textSize(12);
  text(s2, 100, 102, 1100, 50);
  popMatrix();
}

//SLIDE 6
void slide6() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Sky
  noStroke();
  fill(#C7EAFA); //Light blue
  rect(0, 0, width, height);

  myBuildings2.display();

  //Pavement
  noStroke();
  fill(#AAAAAA); //Grey
  rect(0, 600, width, 120);
  fill(#A2A2A2); //Grey
  rect(0, 600, width, 40);

  pushMatrix();
  scale(0.90);
  //translate(200, 0);
  myRestaurant.display();
  popMatrix();

  //Graffiti
  if (keyPressed) {
    image(graffiti, 445, 410, 150, 107);
  }

  myPerson2R.display();
  myPerson2R.move();
  myPerson2R.stop();

  //Graffiti instructions
  fill(255);
  textFont(arial);
  textAlign(LEFT);
  String s = "Press any key for the person to graffiti the restaurant";
  textSize(12);
  text(s, 408, 635, 1100, 50);

  pushMatrix();
  translate(0, -15);
  //Box behind text and footnote
  noStroke();
  fill(255); //White
  rect(90, 65, 1100, 55);

  //Text
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s2 = "Additionally, vandalism happened at 0.6%*, where in some incidents, restaurants were graffitied upon.";
  textSize(23.5);
  text(s2, 100, 75, 1100, 50);

  //Footnote
  fill(#D3212A);
  textFont(arial);
  textAlign(LEFT);
  String s3 = "*This data is from 1,497 reports of COVID pandemic discrimintation submitted on the STOP AAPI HATE website from March 19 to April 15, 2020.";
  textSize(12);
  text(s3, 100, 102, 1100, 50);
  popMatrix();
}

//SLIDE 7
void slide7() {
  noStroke();
  fill(#EDEBEB); //Light grey
  rect(0, 0, 1280, 720);

  //Learn more text
  fill(#D3212A);
  textFont(arial);
  textAlign(CENTER, CENTER);
  textSize(25);
  text("Learn More @", width/2, height/2-65);
  
  //Website text
  fill(#D3212A);
  textFont(arialBold);
  textAlign(CENTER, CENTER);
  textSize(75);
  text("STOPAAPIHATE.ORG", width/2, height/2);
}
