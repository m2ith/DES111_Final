class person2R {

  float xPosition=0;
  float speed=1.5;

  //Constructor
  person2R() {
    xPosition=25;
    speed=1.5;
  }

  void display() {
    image(person2, xPosition, 418, 100, 222);
  }

  void move() {
    xPosition = xPosition + speed;
  }

  void stop() {
    if (xPosition >= 435) {
      speed=0;
    }
  }
}
