void setup() {
  size(600, 600);
  background(200);
  Login("mr","password");
}

void draw () {
String username = "mr";
String password = "o"; 

boolean LoginOk = Login(username, password);
if(LoginOk== true && username.equals("michaela")) {
  exercise1();
}
else if(LoginOk== true && username.equals("mr")) {
  exercise9();
}
}


boolean Login(String username, String password){
  String[] userpass = loadStrings("/Users/michaelajones/Documents/Processing/password.log");
  //print(userpass[1]);
  
  for(int i =0; i < userpass.length; i++) {
  String[] list = split(userpass[i], ':');
  println(list[0]);
  println(list[1]);
  if(username.equals(list[0])){
   print("Sucess"); 
   return true;
  }
  else {print("Fail");
  } 
  }
  
  return false;
  }

void exercise1() {
  stroke(0);
  fill(0, 200, 240);
  rect(0, 0, 500, 500);
 
  stroke(250, 240, 0);
  fill(250, 240, 0);
  ellipse(175, 250, 75, 75);
 
  stroke(0);
  fill(0, 200, 0);
  rect(0, 250, 500, 500);
  
  stroke(0);
  fill(200, 0, 0);
  rect(300, 200, 100, 75);
  
  stroke(0);
  fill(250);
  rect(340, 215, 25, 50);
  
  fill(0);
  ellipse(350, 240, 5, 5);
  
  stroke(0);
  fill(0);
  triangle( 350, 125, 300, 200, 400, 200);
}

void exercise2() {
  stroke(0, 250, 0);
  fill(250);
  arc(300, 400, 600, 500, 0, PI/2);
  
  stroke(0, 250, 250);
  fill(250);
  arc(300, 300, 500, 500, 0, PI/2);
  
  stroke(0, 0, 250);
  fill(250);
  arc(300, 200, 540, 500, 0, PI/4);
}

void exercise3() {
int sizea = 10;
int sizeb = 10;
int coorX = 150;
int coorY = 10;

int sizec = 10;
int sized = 10;
int coorW = 10;
int coorQ = 320;
  
 noStroke();
fill(coorX+20, coorY, coorY);
ellipse(coorX, coorY, sizea, sizeb);
coorY = coorY + 5;
sizea = sizea + 2;
sizeb = sizeb + 2;

noStroke();
fill(coorW+50, coorQ+200, coorQ+40);
ellipse(coorW, coorQ, sizec, sized);
coorW = coorW +5;
sizec = sizec +2;
sized = sized +2;
}

void exercise9() {
  IntDict counts;
  
  counts = new IntDict();

  String[] lines = loadStrings("/Users/michaelajones/Documents/Processing/hamlet.txt");
  String allwords = join(lines, "/n");
  String[] tokens = splitTokens(allwords, "/n ,;.?!");
  //printArray(tokens)
  for (int i = 0; i<tokens.length; i++) {
    String word = tokens[i].toLowerCase();
    if (counts.hasKey(word)) {
      counts.increment(word);
    } else {
      counts.set(word, 1 );
    }
  }
  String[] keys = counts.keyArray();
  for (String k : keys) {
    int count = counts.get(k);
    textSize(count);
    float x = random(width);
    float y = random (height);
    text (k, x, y);
  }
}
