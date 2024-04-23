class restaurant {
  void display() {
    pushMatrix();
    translate(0, 65);
    //Restaurant
    //Reference: https://c8.alamy.com/comp/2BM42ED/new-hong-wong-chinese-restaurant-in-manhattan-chinatown-reopened-for-takeout-business-during-coronavirus-see-more-info-for-full-caption-2BM42ED.jpg
    //Building
    noStroke();
    fill(#DBDBD9); //Light grey
    rect(400, 175, 800, 450);

    stroke(#76554B); //Darker brown red
    strokeWeight(5);
    fill(#90675C); //Brown red
    rect(400, 100, 800, 150);

    //Sign
    image(rText, 510, 115, 350, 134);
    stroke(255); //White
    strokeWeight(2);
    fill(#ED1C24); //Red
    rect(905, 128, 175, 55);
    rect(905, 198, 175, 25);

    //Sign text
    fill(255); //White
    textFont(arial);
    textAlign(LEFT);
    textSize(15);
    text("New Hong Wong", 918, 151);
    fill(255); //White
    textFont(arialBold);
    textAlign(LEFT);
    textSize(16);
    text("Seafood Restaurant", 918, 171);
    fill(255); //White
    textFont(arial);
    textAlign(LEFT);
    textSize(12);
    text("TEL: 212-266-8778", 942, 215);

    //Door
    stroke(#B4B4B4); //Grey
    strokeWeight(4);
    fill(#D8D8D8); //Light grey
    rect(750, 374, 150, 250);
    line(750, 490, 900, 490);
    rect(890, 478, 10, 50);

    //Storage garage
    stroke(#B4B4B4); //Grey
    strokeWeight(4);
    fill(#D8D8D8); //Light grey
    rect(965, 254, 180, 370);
    int spacing=20;
    for (int i=0; i<18; i++) {
      stroke(#B4B4B4); //Grey
      strokeWeight(4);
      fill(#D8D8D8); //Light grey
      line(965, 270+spacing*i, 1145, 270+spacing*i);
    }

    //Window
    stroke(#B4B4B4); //Grey
    strokeWeight(4);
    fill(#D8D8D8); //Light grey
    rect(450, 300, 250, 200);
    rect(450, 500, 250, 124);

    //Window signs
    noStroke();
    fill(#B9B9B9); //Grey
    rect(452, 423, 247, 75);
    popMatrix();
  }
}
