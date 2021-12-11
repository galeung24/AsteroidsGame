ArrayList <Asteroid> boulders= new ArrayList <Asteroid>();
Spaceship bro = new Spaceship();
Star [] bud = new Star[100];
public void setup() 
{
  background(0,0,0);
  size(500,500);
  for(int i = 0; i < bud.length; i++){
    bud[i] = new Star();
  }
}
public void draw() 
{
  background(0,0,0);
  bro.show();
  bro.move();
  for(int i = 0; i < bud.length; i++){
    bud[i].show();
  }
  if(keyPressed){
    if(key == 'w'){
      bro.accelerate(0.1);
    }
    if(key == 's'){
      bro.accelerate(-0.1);
    }
    if(key == 'a'){
      bro.turn(-10);
    }
    if(key == 'd'){
      bro.turn(10);
    }
  }
  for(int i = 0; i < 20; i++){
boulders.add(new Asteroid());
boulders.get(i).show();
boulders.get(i).move();
  }
}
