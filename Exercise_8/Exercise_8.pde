//Smartwatch Data comparison between individuals

Table user;

void setup(){
  
  size (1200,700);
  user = loadTable("tabledata.csv", "header");
println(user.getStringCount(3, 1));
println(user.getStringCount(4, 3));
textAlign(LEFT,CENTER);
}

void draw() {
  background(255);
  fill(0);
  for(int d=0; d< user.getRowCount(); d++) {
    fill(0);
    text(user.getString(d, 0), 100, 25+ d*50);
    
      if (user.getString(d, 4).equals("1")) {
      fill(120, 200, 50, 50);
    }
    else if (user.getString(d, 4).equals ("0")) {
      
      fill(20, 60, 250, 50);
    }
    
    else{
      fill(220,100,50,50);
    }
    ellipse(180, 25+ d*50, sqrt(user.getFloat(d, 1))*12, sqrt(table.getFloat(d, 1))*12);
  }
  
}
