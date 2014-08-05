int frameno = 0;
int[][] seatStatus = new int[6][301];
int dotsize[] = new int[6];
  
void setup() {
 size(640, 480); 
 frameRate(10);
 
 background(0);
 
 stroke(255);
 fill(255);
 
 smooth();
 seatStatusSetup();
}
void draw() {
  background(0);
  frameno++;
  stroke(255);
  fill(255);
  text(frameno, 100, 100);
  for(int i=1; i<6; i++) {
    text(seatStatus[i][frameno%300], 100*i, 200);
    if(seatStatus[i][frameno%300] == 1) {
      dotsize[i] += 5;
    } else {
      dotsize[i] = 10;
    }
    ellipse(100*i, 300, dotsize[i], dotsize[i]);
  }
}

void seatStatusSetup() {
seatStatus[1][1]=0;  seatStatus[2][1]=0;  seatStatus[3][1]=0;  seatStatus[4][1]=0;  seatStatus[5][1]=0;
seatStatus[1][2]=0;  seatStatus[2][2]=0;  seatStatus[3][2]=0;  seatStatus[4][2]=0;  seatStatus[5][2]=0;
seatStatus[1][3]=0;  seatStatus[2][3]=0;  seatStatus[3][3]=0;  seatStatus[4][3]=0;  seatStatus[5][3]=0;
seatStatus[1][4]=0;  seatStatus[2][4]=0;  seatStatus[3][4]=0;  seatStatus[4][4]=0;  seatStatus[5][4]=0;
seatStatus[1][5]=0;  seatStatus[2][5]=0;  seatStatus[3][5]=0;  seatStatus[4][5]=0;  seatStatus[5][5]=0;
seatStatus[1][6]=0;  seatStatus[2][6]=0;  seatStatus[3][6]=0;  seatStatus[4][6]=0;  seatStatus[5][6]=0;
seatStatus[1][7]=1;  seatStatus[2][7]=0;  seatStatus[3][7]=0;  seatStatus[4][7]=0;  seatStatus[5][7]=0;
seatStatus[1][8]=1;  seatStatus[2][8]=0;  seatStatus[3][8]=0;  seatStatus[4][8]=0;  seatStatus[5][8]=0;
seatStatus[1][9]=1;  seatStatus[2][9]=0;  seatStatus[3][9]=0;  seatStatus[4][9]=0;  seatStatus[5][9]=0;
seatStatus[1][10]=1;  seatStatus[2][10]=0;  seatStatus[3][10]=0;  seatStatus[4][10]=0;  seatStatus[5][10]=0;
seatStatus[1][11]=1;  seatStatus[2][11]=0;  seatStatus[3][11]=0;  seatStatus[4][11]=0;  seatStatus[5][11]=0;
seatStatus[1][12]=1;  seatStatus[2][12]=0;  seatStatus[3][12]=0;  seatStatus[4][12]=0;  seatStatus[5][12]=0;
seatStatus[1][13]=1;  seatStatus[2][13]=0;  seatStatus[3][13]=0;  seatStatus[4][13]=0;  seatStatus[5][13]=0;
seatStatus[1][14]=1;  seatStatus[2][14]=0;  seatStatus[3][14]=0;  seatStatus[4][14]=0;  seatStatus[5][14]=1;
seatStatus[1][15]=1;  seatStatus[2][15]=0;  seatStatus[3][15]=0;  seatStatus[4][15]=0;  seatStatus[5][15]=1;
seatStatus[1][16]=1;  seatStatus[2][16]=0;  seatStatus[3][16]=0;  seatStatus[4][16]=0;  seatStatus[5][16]=1;
seatStatus[1][17]=1;  seatStatus[2][17]=0;  seatStatus[3][17]=0;  seatStatus[4][17]=0;  seatStatus[5][17]=1;
seatStatus[1][18]=1;  seatStatus[2][18]=0;  seatStatus[3][18]=0;  seatStatus[4][18]=0;  seatStatus[5][18]=1;
seatStatus[1][19]=1;  seatStatus[2][19]=0;  seatStatus[3][19]=0;  seatStatus[4][19]=0;  seatStatus[5][19]=1;
seatStatus[1][20]=1;  seatStatus[2][20]=0;  seatStatus[3][20]=0;  seatStatus[4][20]=0;  seatStatus[5][20]=1;
seatStatus[1][21]=1;  seatStatus[2][21]=0;  seatStatus[3][21]=0;  seatStatus[4][21]=0;  seatStatus[5][21]=1;
seatStatus[1][22]=1;  seatStatus[2][22]=0;  seatStatus[3][22]=0;  seatStatus[4][22]=0;  seatStatus[5][22]=1;
seatStatus[1][23]=1;  seatStatus[2][23]=0;  seatStatus[3][23]=1;  seatStatus[4][23]=0;  seatStatus[5][23]=1;
seatStatus[1][24]=1;  seatStatus[2][24]=0;  seatStatus[3][24]=1;  seatStatus[4][24]=0;  seatStatus[5][24]=1;
seatStatus[1][25]=1;  seatStatus[2][25]=0;  seatStatus[3][25]=1;  seatStatus[4][25]=0;  seatStatus[5][25]=1;
seatStatus[1][26]=1;  seatStatus[2][26]=0;  seatStatus[3][26]=1;  seatStatus[4][26]=0;  seatStatus[5][26]=1;
seatStatus[1][27]=1;  seatStatus[2][27]=0;  seatStatus[3][27]=1;  seatStatus[4][27]=0;  seatStatus[5][27]=1;
seatStatus[1][28]=1;  seatStatus[2][28]=0;  seatStatus[3][28]=1;  seatStatus[4][28]=0;  seatStatus[5][28]=1;
seatStatus[1][29]=1;  seatStatus[2][29]=0;  seatStatus[3][29]=1;  seatStatus[4][29]=0;  seatStatus[5][29]=1;
seatStatus[1][30]=0;  seatStatus[2][30]=0;  seatStatus[3][30]=1;  seatStatus[4][30]=0;  seatStatus[5][30]=1;
seatStatus[1][31]=0;  seatStatus[2][31]=0;  seatStatus[3][31]=1;  seatStatus[4][31]=0;  seatStatus[5][31]=1;
seatStatus[1][32]=0;  seatStatus[2][32]=0;  seatStatus[3][32]=1;  seatStatus[4][32]=0;  seatStatus[5][32]=1;
seatStatus[1][33]=0;  seatStatus[2][33]=0;  seatStatus[3][33]=1;  seatStatus[4][33]=0;  seatStatus[5][33]=1;
seatStatus[1][34]=0;  seatStatus[2][34]=0;  seatStatus[3][34]=1;  seatStatus[4][34]=0;  seatStatus[5][34]=1;
seatStatus[1][35]=0;  seatStatus[2][35]=0;  seatStatus[3][35]=1;  seatStatus[4][35]=0;  seatStatus[5][35]=1;
seatStatus[1][36]=0;  seatStatus[2][36]=0;  seatStatus[3][36]=1;  seatStatus[4][36]=0;  seatStatus[5][36]=1;
seatStatus[1][37]=0;  seatStatus[2][37]=0;  seatStatus[3][37]=1;  seatStatus[4][37]=0;  seatStatus[5][37]=1;
seatStatus[1][38]=0;  seatStatus[2][38]=0;  seatStatus[3][38]=1;  seatStatus[4][38]=0;  seatStatus[5][38]=1;
seatStatus[1][39]=0;  seatStatus[2][39]=0;  seatStatus[3][39]=1;  seatStatus[4][39]=0;  seatStatus[5][39]=1;
seatStatus[1][40]=0;  seatStatus[2][40]=0;  seatStatus[3][40]=1;  seatStatus[4][40]=0;  seatStatus[5][40]=1;
seatStatus[1][41]=0;  seatStatus[2][41]=0;  seatStatus[3][41]=1;  seatStatus[4][41]=0;  seatStatus[5][41]=1;
seatStatus[1][42]=0;  seatStatus[2][42]=0;  seatStatus[3][42]=1;  seatStatus[4][42]=0;  seatStatus[5][42]=1;
seatStatus[1][43]=0;  seatStatus[2][43]=0;  seatStatus[3][43]=1;  seatStatus[4][43]=0;  seatStatus[5][43]=1;
seatStatus[1][44]=0;  seatStatus[2][44]=0;  seatStatus[3][44]=1;  seatStatus[4][44]=0;  seatStatus[5][44]=1;
seatStatus[1][45]=0;  seatStatus[2][45]=0;  seatStatus[3][45]=1;  seatStatus[4][45]=0;  seatStatus[5][45]=1;
seatStatus[1][46]=0;  seatStatus[2][46]=0;  seatStatus[3][46]=1;  seatStatus[4][46]=0;  seatStatus[5][46]=1;
seatStatus[1][47]=0;  seatStatus[2][47]=0;  seatStatus[3][47]=1;  seatStatus[4][47]=0;  seatStatus[5][47]=1;
seatStatus[1][48]=0;  seatStatus[2][48]=0;  seatStatus[3][48]=1;  seatStatus[4][48]=0;  seatStatus[5][48]=1;
seatStatus[1][49]=0;  seatStatus[2][49]=0;  seatStatus[3][49]=1;  seatStatus[4][49]=0;  seatStatus[5][49]=1;
seatStatus[1][50]=0;  seatStatus[2][50]=0;  seatStatus[3][50]=1;  seatStatus[4][50]=0;  seatStatus[5][50]=1;
seatStatus[1][51]=1;  seatStatus[2][51]=0;  seatStatus[3][51]=1;  seatStatus[4][51]=0;  seatStatus[5][51]=1;
seatStatus[1][52]=1;  seatStatus[2][52]=0;  seatStatus[3][52]=1;  seatStatus[4][52]=0;  seatStatus[5][52]=1;
seatStatus[1][53]=1;  seatStatus[2][53]=0;  seatStatus[3][53]=1;  seatStatus[4][53]=0;  seatStatus[5][53]=1;
seatStatus[1][54]=1;  seatStatus[2][54]=0;  seatStatus[3][54]=1;  seatStatus[4][54]=0;  seatStatus[5][54]=1;
seatStatus[1][55]=1;  seatStatus[2][55]=0;  seatStatus[3][55]=1;  seatStatus[4][55]=0;  seatStatus[5][55]=1;
seatStatus[1][56]=1;  seatStatus[2][56]=0;  seatStatus[3][56]=1;  seatStatus[4][56]=0;  seatStatus[5][56]=1;
seatStatus[1][57]=1;  seatStatus[2][57]=0;  seatStatus[3][57]=1;  seatStatus[4][57]=0;  seatStatus[5][57]=1;
seatStatus[1][58]=1;  seatStatus[2][58]=0;  seatStatus[3][58]=1;  seatStatus[4][58]=0;  seatStatus[5][58]=1;
seatStatus[1][59]=1;  seatStatus[2][59]=0;  seatStatus[3][59]=1;  seatStatus[4][59]=0;  seatStatus[5][59]=1;
seatStatus[1][60]=1;  seatStatus[2][60]=0;  seatStatus[3][60]=1;  seatStatus[4][60]=0;  seatStatus[5][60]=1;
seatStatus[1][61]=1;  seatStatus[2][61]=0;  seatStatus[3][61]=1;  seatStatus[4][61]=1;  seatStatus[5][61]=1;
seatStatus[1][62]=1;  seatStatus[2][62]=0;  seatStatus[3][62]=1;  seatStatus[4][62]=1;  seatStatus[5][62]=1;
seatStatus[1][63]=1;  seatStatus[2][63]=0;  seatStatus[3][63]=1;  seatStatus[4][63]=1;  seatStatus[5][63]=1;
seatStatus[1][64]=1;  seatStatus[2][64]=0;  seatStatus[3][64]=1;  seatStatus[4][64]=1;  seatStatus[5][64]=1;
seatStatus[1][65]=1;  seatStatus[2][65]=0;  seatStatus[3][65]=1;  seatStatus[4][65]=1;  seatStatus[5][65]=1;
seatStatus[1][66]=1;  seatStatus[2][66]=0;  seatStatus[3][66]=1;  seatStatus[4][66]=1;  seatStatus[5][66]=1;
seatStatus[1][67]=1;  seatStatus[2][67]=0;  seatStatus[3][67]=0;  seatStatus[4][67]=1;  seatStatus[5][67]=0;
seatStatus[1][68]=1;  seatStatus[2][68]=0;  seatStatus[3][68]=0;  seatStatus[4][68]=1;  seatStatus[5][68]=0;
seatStatus[1][69]=1;  seatStatus[2][69]=0;  seatStatus[3][69]=0;  seatStatus[4][69]=1;  seatStatus[5][69]=0;
seatStatus[1][70]=1;  seatStatus[2][70]=0;  seatStatus[3][70]=0;  seatStatus[4][70]=1;  seatStatus[5][70]=0;
}
