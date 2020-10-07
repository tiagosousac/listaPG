/*(1 Ponto) Crie uma animação (2D) que consiste em uma bola de raio 30UC
se movimentando pela tela colidindo elasticamente (não há perda ou ganho de energia 
pela bola durante as colisões) no chão e nas paredes. A bola deverá começar seu 
movimento a partir do canto inferior esquerdo, e velocidade vertical de 10 UC/frame.
Considere também uma aceleração da gravidade de 0.5 UC/frame², e que o movimento de ida
e volta deverá ser concluído em períodos de 4 s.Obs.: UC = unidade de comprimento*/

int raio = 15;
float aceleracao = 0.5;
float x = raio;
float xVel=6.41;
float y = (600/2)-(raio*2);
float yVel = -10;


void setup () {
  size(800, 600);
  frameRate(60);
}

void draw() {
  noStroke();
  fill(220,220,220);
  rect(0, 0, width, height/2);
  fill(255, 0, 0);
  rect(0, height/2, width, height/2);
  fill(0, 0, 255);
  circle(x, y, raio*2);
  if(x>=raio && x<=800-raio) {
    x = x + xVel;
  }
  else {
    xVel = xVel*(-1);
    x = x + xVel;
  }
  
  if(abs(yVel)<=10.0) { 
    if(y<=(600/2)-raio) { //aqui na segunda vez ele passa de 10. tem que ser entre 10
      y = y + yVel;
      println(yVel);
      yVel = yVel + aceleracao;
      print("loop");
    }
    else {
      yVel = yVel*(-1);
      y = y + yVel;
      print("entrou");
    }
  }
  else {
    yVel=10.0;
  }
}
