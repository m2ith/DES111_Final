class internmentCamp {
  void display() {
    //Sky
    noStroke();
    fill(#C7EAFA); //Light blue
    rect(0, 0, width, height);

    //Ground
    noStroke();
    fill(#988A75); //Brown
    rect(0, 500, width, 220);
    fill(#837054); //Darker brown
    rect(0, 425, width, 105);
    rect(0, 680, width, 40);

    //Buildings
    //1
    int spacingGrid1 = 440;
    for (int i=0; i<3; i++) {
      pushMatrix();
      translate(50, -140);
      noStroke();
      //Roof
      fill(#A59E94); //Grey brown
      triangle(200+spacingGrid1*i, 300, 0+spacingGrid1*i, 425, 400+spacingGrid1*i, 425);
      //Body
      fill(#89837B); //Darker grey brown
      rect(0+spacingGrid1*i, 425, 400, 185);
      //Windows
      fill(#A2998B); //Light grey brown
      //1
      rect(100+spacingGrid1*i, 465, 80, 80);
      //2
      rect(220+spacingGrid1*i, 465, 80, 80);
      stroke(#8B8377); //Dark grey brown
      strokeWeight(3);
      //1
      line(100+spacingGrid1*i, 505, 180+spacingGrid1*i, 505);
      line(140+spacingGrid1*i, 465, 140+spacingGrid1*i, 545);
      //2
      line(220+spacingGrid1*i, 505, 300+spacingGrid1*i, 505);
      line(260+spacingGrid1*i, 465, 260+spacingGrid1*i, 545);
      popMatrix();
      /*
      //Reference
       pushMatrix();
       translate(50, -140);
       noStroke();
       //Roof
       fill(#A59E94); //Grey brown
       triangle(200, 300, 0, 425, 400, 425);
       //Body
       fill(#89837B); //Darker grey brown
       rect(0, 425, 400, 185);
       //Windows
       fill(#A2998B); //Light grey brown
       //1
       rect(100, 465, 80, 80);
       //2
       rect(220, 465, 80, 80);
       stroke(#8B8377); //Dark grey brown
       strokeWeight(3);
       //1
       line(100, 505, 180, 505);
       line(140, 465, 140, 545);
       //2
       line(220, 505, 300, 505);
       line(260, 465, 260, 545);
       popMatrix();
       */
    }

    //People (from left to right
        //Woman 1
    pushMatrix();
    scale(1.0255);
    image(person1, 43, 410);
    popMatrix();
    //Man 1
    pushMatrix();
    scale(1.02);
    image(person3, 165, 460);
    popMatrix();
    //Man 2
    pushMatrix();
    scale(1.02);
    image(person3, 510, 320);
    popMatrix();
    //Woman 3
    pushMatrix();
    scale(1.0255);
    image(person1, 795, 420);
    popMatrix();
    //Man 3
    pushMatrix();
    scale(1.02);
    image(person3, 1078, 422);
    popMatrix();

    //Fence
    //Lines
    int spacingGrid2 = 40;
    for (int i=0; i<7; i++) {
      stroke(#6C4A16); //Brown
      strokeWeight(4);
      line(0, 430+spacingGrid2*i, 1280, 430+spacingGrid2*i);
    }
    //Posts
    int spacingGrid3 = 150;
    for (int i=0; i<10; i++) {
      noStroke();
      fill(#5A3D11); //Dark brown
      rect(0+spacingGrid3*i, 400, 50, 300);
    }
  }
}
