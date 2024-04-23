class buildings2 {
  void display() {
    //Buildings (from left to right)
    //1
    noStroke();
    fill(#767575); //Even darker grey
    rect(0, 0, 250, 600);
    //2
    noStroke();
    fill(#959595); //Dark grey
    rect(250, 0, 300, 600);
    //3
    noStroke();
    fill(#898989); //Darker grey
    rect(550, 0, 250, 600);
    //4
    noStroke();
    fill(#838383); //Dark grey
    rect(790, 0, 250, 600);
    //5
    noStroke();
    fill(#767575); //Even darker grey
    rect(1040, 0, 250, 600);

    //Building windows (from left to right)
    //1
    int spacingGrid1 = 100;
    for (int i=0; i<5; i++) {
      for (int j=0; j<2; j++) {
        noStroke();
        fill(#F0EBCB); //Darker pale yellow
        rect(38+spacingGrid1*j, 30+spacingGrid1*i, 75, 75);
      }
    }
    //2
    int spacingGrid2 = 100;
    for (int i=0; i<4; i++) {
      for (int j=0; j<2; j++) {
        noStroke();
        fill(#FCF8D4); //Pale yellow
        rect(305+spacingGrid2*j, 30+spacingGrid2*i, 75, 75);
      }
    }
    //3
    int spacingGrid3 = 100;
    for (int i=0; i<4; i++) {
      for (int j=0; j<2; j++) {
        noStroke();
        fill(#F5F1D5); //Pale yellow
        rect(588+spacingGrid3*j, 30+spacingGrid3*i, 75, 75);
      }
    }
    //4
    int spacingGrid4 = 100;
    for (int i=0; i<4; i++) {
      for (int j=0; j<2; j++) {
        noStroke();
        fill(#F5F1D5); //Pale yellow
        rect(835+spacingGrid4*j, 30+spacingGrid4*i, 75, 75);
      }
    }
    //5
    int spacingGrid5 = 100;
    for (int i=0; i<5; i++) {
      for (int j=0; j<2; j++) {
        noStroke();
        fill(#F0EBCB); //Darker pale yellow
        rect(1074+spacingGrid5*j, 30+spacingGrid5*i, 75, 75);
      }
    }
  }
}
