int frameno = 0;
int[][] seatStatus = new int[6][301];
int dotsize[] = new int[6];
int posx[] = new int[6];
int posy[] = new int[6];
  
void setup() {
 size(640, 480); 
 frameRate(10);
 
 background(0);
 
 stroke(255);
 fill(255);
 
 smooth();
 seatStatusSetup();
 
for(int i=1; i<6; i++) {
  posx[i] = (width-100)/10*(2*i-1)+50;
  posy[i] = height/2;
}

rectMode(RADIUS);

}
void draw() {
  background(0, 0, 0, 100); // R,G,B,alpha

  if(frameno < seatStatus[0].length - 1) {
    frameno++;
  } else {
    frameno = 0;
  }

  stroke(255);
  fill(255);
  text(frameno, 100, 100);

/*
  for(int i=1; i<6; i++) {
    text(seatStatus[i][frameno%300], 100*i, 200);
    if(seatStatus[i][frameno%300] == 1) {
      dotsize[i] += 5;
    } else {
      dotsize[i] = 10;
    }
    ellipse(posx[i], posy[i], dotsize[i], dotsize[i]);
  }
*/

  for(int i=1; i<seatStatus.length; i++) {
    text(seatStatus[i][frameno], width/10*(2*i-1), 200);
    if(seatStatus[i][frameno] == 1) {
      dotsize[i] += 3;
    } else {
      if(dotsize[i] > 5) {
        dotsize[i] -= 6;
      } else {
        dotsize[i] = 0;
      }
    }
    // 接触判定
    fill(255, 255, 255, 50);
    for(int j=1; j<6; j++) {
      if(j != i) {
        if(abs(posx[i] - posx[j]) < (dotsize[i] + dotsize[j])) {
          if(dotsize[i] < dotsize[j]) {
            fill(0, 255, 0, 50);
            dotsize[i] += 10;
            dotsize[j] -= 10;
          } else {
            fill(255, 0, 0, 50);
            dotsize[i] -= 10;
            dotsize[j] += 10;
          }
        }
     }
    }
    rect(posx[i], posy[i], dotsize[i], dotsize[i]);
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
seatStatus[1][71]=1;  seatStatus[2][71]=0;  seatStatus[3][71]=0;  seatStatus[4][71]=1;  seatStatus[5][71]=0;
seatStatus[1][72]=1;  seatStatus[2][72]=0;  seatStatus[3][72]=0;  seatStatus[4][72]=1;  seatStatus[5][72]=0;
seatStatus[1][73]=1;  seatStatus[2][73]=0;  seatStatus[3][73]=0;  seatStatus[4][73]=1;  seatStatus[5][73]=0;
seatStatus[1][74]=1;  seatStatus[2][74]=0;  seatStatus[3][74]=0;  seatStatus[4][74]=1;  seatStatus[5][74]=0;
seatStatus[1][75]=1;  seatStatus[2][75]=0;  seatStatus[3][75]=0;  seatStatus[4][75]=1;  seatStatus[5][75]=0;
seatStatus[1][76]=1;  seatStatus[2][76]=0;  seatStatus[3][76]=0;  seatStatus[4][76]=1;  seatStatus[5][76]=0;
seatStatus[1][77]=1;  seatStatus[2][77]=0;  seatStatus[3][77]=0;  seatStatus[4][77]=1;  seatStatus[5][77]=0;
seatStatus[1][78]=1;  seatStatus[2][78]=0;  seatStatus[3][78]=0;  seatStatus[4][78]=1;  seatStatus[5][78]=0;
seatStatus[1][79]=1;  seatStatus[2][79]=0;  seatStatus[3][79]=0;  seatStatus[4][79]=1;  seatStatus[5][79]=0;
seatStatus[1][80]=1;  seatStatus[2][80]=0;  seatStatus[3][80]=0;  seatStatus[4][80]=1;  seatStatus[5][80]=0;
seatStatus[1][81]=1;  seatStatus[2][81]=0;  seatStatus[3][81]=0;  seatStatus[4][81]=1;  seatStatus[5][81]=0;
seatStatus[1][82]=1;  seatStatus[2][82]=0;  seatStatus[3][82]=0;  seatStatus[4][82]=1;  seatStatus[5][82]=0;
seatStatus[1][83]=1;  seatStatus[2][83]=0;  seatStatus[3][83]=0;  seatStatus[4][83]=1;  seatStatus[5][83]=0;
seatStatus[1][84]=1;  seatStatus[2][84]=0;  seatStatus[3][84]=0;  seatStatus[4][84]=1;  seatStatus[5][84]=0;
seatStatus[1][85]=1;  seatStatus[2][85]=0;  seatStatus[3][85]=0;  seatStatus[4][85]=1;  seatStatus[5][85]=0;
seatStatus[1][86]=1;  seatStatus[2][86]=1;  seatStatus[3][86]=1;  seatStatus[4][86]=1;  seatStatus[5][86]=0;
seatStatus[1][87]=1;  seatStatus[2][87]=1;  seatStatus[3][87]=1;  seatStatus[4][87]=1;  seatStatus[5][87]=0;
seatStatus[1][88]=1;  seatStatus[2][88]=1;  seatStatus[3][88]=1;  seatStatus[4][88]=1;  seatStatus[5][88]=0;
seatStatus[1][89]=1;  seatStatus[2][89]=1;  seatStatus[3][89]=1;  seatStatus[4][89]=1;  seatStatus[5][89]=0;
seatStatus[1][90]=1;  seatStatus[2][90]=1;  seatStatus[3][90]=1;  seatStatus[4][90]=1;  seatStatus[5][90]=0;
seatStatus[1][91]=1;  seatStatus[2][91]=1;  seatStatus[3][91]=1;  seatStatus[4][91]=1;  seatStatus[5][91]=0;
seatStatus[1][92]=1;  seatStatus[2][92]=1;  seatStatus[3][92]=1;  seatStatus[4][92]=1;  seatStatus[5][92]=0;
seatStatus[1][93]=1;  seatStatus[2][93]=1;  seatStatus[3][93]=1;  seatStatus[4][93]=1;  seatStatus[5][93]=0;
seatStatus[1][94]=1;  seatStatus[2][94]=1;  seatStatus[3][94]=1;  seatStatus[4][94]=1;  seatStatus[5][94]=0;
seatStatus[1][95]=1;  seatStatus[2][95]=1;  seatStatus[3][95]=1;  seatStatus[4][95]=1;  seatStatus[5][95]=0;
seatStatus[1][96]=1;  seatStatus[2][96]=1;  seatStatus[3][96]=1;  seatStatus[4][96]=1;  seatStatus[5][96]=0;
seatStatus[1][97]=1;  seatStatus[2][97]=1;  seatStatus[3][97]=1;  seatStatus[4][97]=1;  seatStatus[5][97]=0;
seatStatus[1][98]=1;  seatStatus[2][98]=1;  seatStatus[3][98]=1;  seatStatus[4][98]=1;  seatStatus[5][98]=0;
seatStatus[1][99]=1;  seatStatus[2][99]=1;  seatStatus[3][99]=1;  seatStatus[4][99]=1;  seatStatus[5][99]=0;
seatStatus[1][100]=1;  seatStatus[2][100]=1;  seatStatus[3][100]=1;  seatStatus[4][100]=1;  seatStatus[5][100]=0;
seatStatus[1][101]=1;  seatStatus[2][101]=1;  seatStatus[3][101]=1;  seatStatus[4][101]=1;  seatStatus[5][101]=0;
seatStatus[1][102]=1;  seatStatus[2][102]=1;  seatStatus[3][102]=1;  seatStatus[4][102]=1;  seatStatus[5][102]=0;
seatStatus[1][103]=1;  seatStatus[2][103]=1;  seatStatus[3][103]=1;  seatStatus[4][103]=1;  seatStatus[5][103]=0;
seatStatus[1][104]=1;  seatStatus[2][104]=1;  seatStatus[3][104]=1;  seatStatus[4][104]=1;  seatStatus[5][104]=0;
seatStatus[1][105]=1;  seatStatus[2][105]=1;  seatStatus[3][105]=1;  seatStatus[4][105]=1;  seatStatus[5][105]=0;
seatStatus[1][106]=1;  seatStatus[2][106]=1;  seatStatus[3][106]=1;  seatStatus[4][106]=1;  seatStatus[5][106]=0;
seatStatus[1][107]=1;  seatStatus[2][107]=1;  seatStatus[3][107]=1;  seatStatus[4][107]=1;  seatStatus[5][107]=0;
seatStatus[1][108]=1;  seatStatus[2][108]=1;  seatStatus[3][108]=1;  seatStatus[4][108]=1;  seatStatus[5][108]=0;
seatStatus[1][109]=1;  seatStatus[2][109]=1;  seatStatus[3][109]=1;  seatStatus[4][109]=1;  seatStatus[5][109]=0;
seatStatus[1][110]=1;  seatStatus[2][110]=1;  seatStatus[3][110]=1;  seatStatus[4][110]=1;  seatStatus[5][110]=0;
seatStatus[1][111]=1;  seatStatus[2][111]=1;  seatStatus[3][111]=1;  seatStatus[4][111]=1;  seatStatus[5][111]=0;
seatStatus[1][112]=1;  seatStatus[2][112]=1;  seatStatus[3][112]=1;  seatStatus[4][112]=1;  seatStatus[5][112]=0;
seatStatus[1][113]=1;  seatStatus[2][113]=1;  seatStatus[3][113]=1;  seatStatus[4][113]=0;  seatStatus[5][113]=0;
seatStatus[1][114]=1;  seatStatus[2][114]=1;  seatStatus[3][114]=1;  seatStatus[4][114]=0;  seatStatus[5][114]=0;
seatStatus[1][115]=1;  seatStatus[2][115]=1;  seatStatus[3][115]=1;  seatStatus[4][115]=0;  seatStatus[5][115]=0;
seatStatus[1][116]=0;  seatStatus[2][116]=1;  seatStatus[3][116]=1;  seatStatus[4][116]=0;  seatStatus[5][116]=0;
seatStatus[1][117]=0;  seatStatus[2][117]=1;  seatStatus[3][117]=1;  seatStatus[4][117]=0;  seatStatus[5][117]=0;
seatStatus[1][118]=0;  seatStatus[2][118]=1;  seatStatus[3][118]=1;  seatStatus[4][118]=0;  seatStatus[5][118]=0;
seatStatus[1][119]=0;  seatStatus[2][119]=0;  seatStatus[3][119]=0;  seatStatus[4][119]=0;  seatStatus[5][119]=0;
seatStatus[1][120]=0;  seatStatus[2][120]=0;  seatStatus[3][120]=0;  seatStatus[4][120]=0;  seatStatus[5][120]=0;
seatStatus[1][121]=0;  seatStatus[2][121]=0;  seatStatus[3][121]=0;  seatStatus[4][121]=0;  seatStatus[5][121]=0;
seatStatus[1][122]=0;  seatStatus[2][122]=0;  seatStatus[3][122]=0;  seatStatus[4][122]=0;  seatStatus[5][122]=0;
seatStatus[1][123]=0;  seatStatus[2][123]=0;  seatStatus[3][123]=0;  seatStatus[4][123]=0;  seatStatus[5][123]=0;
seatStatus[1][124]=0;  seatStatus[2][124]=0;  seatStatus[3][124]=0;  seatStatus[4][124]=0;  seatStatus[5][124]=0;
seatStatus[1][125]=0;  seatStatus[2][125]=0;  seatStatus[3][125]=0;  seatStatus[4][125]=0;  seatStatus[5][125]=0;
seatStatus[1][126]=0;  seatStatus[2][126]=0;  seatStatus[3][126]=0;  seatStatus[4][126]=0;  seatStatus[5][126]=0;
seatStatus[1][127]=0;  seatStatus[2][127]=0;  seatStatus[3][127]=0;  seatStatus[4][127]=0;  seatStatus[5][127]=0;
seatStatus[1][128]=0;  seatStatus[2][128]=0;  seatStatus[3][128]=0;  seatStatus[4][128]=0;  seatStatus[5][128]=0;
seatStatus[1][129]=0;  seatStatus[2][129]=0;  seatStatus[3][129]=0;  seatStatus[4][129]=0;  seatStatus[5][129]=0;
seatStatus[1][130]=0;  seatStatus[2][130]=0;  seatStatus[3][130]=0;  seatStatus[4][130]=0;  seatStatus[5][130]=0;
seatStatus[1][131]=0;  seatStatus[2][131]=0;  seatStatus[3][131]=0;  seatStatus[4][131]=0;  seatStatus[5][131]=0;
seatStatus[1][132]=0;  seatStatus[2][132]=0;  seatStatus[3][132]=0;  seatStatus[4][132]=0;  seatStatus[5][132]=0;
seatStatus[1][133]=0;  seatStatus[2][133]=0;  seatStatus[3][133]=0;  seatStatus[4][133]=0;  seatStatus[5][133]=0;
seatStatus[1][134]=0;  seatStatus[2][134]=0;  seatStatus[3][134]=0;  seatStatus[4][134]=0;  seatStatus[5][134]=0;
seatStatus[1][135]=0;  seatStatus[2][135]=0;  seatStatus[3][135]=0;  seatStatus[4][135]=0;  seatStatus[5][135]=0;
seatStatus[1][136]=0;  seatStatus[2][136]=0;  seatStatus[3][136]=0;  seatStatus[4][136]=0;  seatStatus[5][136]=0;
seatStatus[1][137]=0;  seatStatus[2][137]=0;  seatStatus[3][137]=0;  seatStatus[4][137]=0;  seatStatus[5][137]=1;
seatStatus[1][138]=0;  seatStatus[2][138]=0;  seatStatus[3][138]=0;  seatStatus[4][138]=0;  seatStatus[5][138]=1;
seatStatus[1][139]=0;  seatStatus[2][139]=0;  seatStatus[3][139]=0;  seatStatus[4][139]=0;  seatStatus[5][139]=1;
seatStatus[1][140]=0;  seatStatus[2][140]=0;  seatStatus[3][140]=0;  seatStatus[4][140]=0;  seatStatus[5][140]=1;
seatStatus[1][141]=0;  seatStatus[2][141]=0;  seatStatus[3][141]=0;  seatStatus[4][141]=0;  seatStatus[5][141]=1;
seatStatus[1][142]=0;  seatStatus[2][142]=0;  seatStatus[3][142]=0;  seatStatus[4][142]=0;  seatStatus[5][142]=1;
seatStatus[1][143]=0;  seatStatus[2][143]=0;  seatStatus[3][143]=0;  seatStatus[4][143]=0;  seatStatus[5][143]=1;
seatStatus[1][144]=0;  seatStatus[2][144]=0;  seatStatus[3][144]=0;  seatStatus[4][144]=0;  seatStatus[5][144]=1;
seatStatus[1][145]=0;  seatStatus[2][145]=0;  seatStatus[3][145]=0;  seatStatus[4][145]=0;  seatStatus[5][145]=1;
seatStatus[1][146]=0;  seatStatus[2][146]=0;  seatStatus[3][146]=0;  seatStatus[4][146]=0;  seatStatus[5][146]=1;
seatStatus[1][147]=0;  seatStatus[2][147]=0;  seatStatus[3][147]=0;  seatStatus[4][147]=0;  seatStatus[5][147]=1;
seatStatus[1][148]=0;  seatStatus[2][148]=0;  seatStatus[3][148]=0;  seatStatus[4][148]=0;  seatStatus[5][148]=1;
seatStatus[1][149]=0;  seatStatus[2][149]=0;  seatStatus[3][149]=0;  seatStatus[4][149]=0;  seatStatus[5][149]=1;
seatStatus[1][150]=0;  seatStatus[2][150]=0;  seatStatus[3][150]=0;  seatStatus[4][150]=0;  seatStatus[5][150]=1;
seatStatus[1][151]=0;  seatStatus[2][151]=0;  seatStatus[3][151]=0;  seatStatus[4][151]=0;  seatStatus[5][151]=1;
seatStatus[1][152]=0;  seatStatus[2][152]=0;  seatStatus[3][152]=0;  seatStatus[4][152]=0;  seatStatus[5][152]=1;
seatStatus[1][153]=0;  seatStatus[2][153]=0;  seatStatus[3][153]=0;  seatStatus[4][153]=0;  seatStatus[5][153]=1;
seatStatus[1][154]=0;  seatStatus[2][154]=0;  seatStatus[3][154]=0;  seatStatus[4][154]=0;  seatStatus[5][154]=1;
seatStatus[1][155]=0;  seatStatus[2][155]=0;  seatStatus[3][155]=0;  seatStatus[4][155]=0;  seatStatus[5][155]=1;
seatStatus[1][156]=0;  seatStatus[2][156]=0;  seatStatus[3][156]=0;  seatStatus[4][156]=0;  seatStatus[5][156]=1;
seatStatus[1][157]=0;  seatStatus[2][157]=0;  seatStatus[3][157]=0;  seatStatus[4][157]=0;  seatStatus[5][157]=1;
seatStatus[1][158]=0;  seatStatus[2][158]=0;  seatStatus[3][158]=0;  seatStatus[4][158]=0;  seatStatus[5][158]=1;
seatStatus[1][159]=0;  seatStatus[2][159]=0;  seatStatus[3][159]=0;  seatStatus[4][159]=0;  seatStatus[5][159]=0;
seatStatus[1][160]=0;  seatStatus[2][160]=0;  seatStatus[3][160]=0;  seatStatus[4][160]=0;  seatStatus[5][160]=0;
seatStatus[1][161]=0;  seatStatus[2][161]=0;  seatStatus[3][161]=0;  seatStatus[4][161]=0;  seatStatus[5][161]=0;
seatStatus[1][162]=0;  seatStatus[2][162]=0;  seatStatus[3][162]=0;  seatStatus[4][162]=0;  seatStatus[5][162]=0;
seatStatus[1][163]=0;  seatStatus[2][163]=0;  seatStatus[3][163]=0;  seatStatus[4][163]=0;  seatStatus[5][163]=0;
seatStatus[1][164]=0;  seatStatus[2][164]=0;  seatStatus[3][164]=0;  seatStatus[4][164]=0;  seatStatus[5][164]=0;
seatStatus[1][165]=0;  seatStatus[2][165]=0;  seatStatus[3][165]=0;  seatStatus[4][165]=0;  seatStatus[5][165]=0;
seatStatus[1][166]=0;  seatStatus[2][166]=0;  seatStatus[3][166]=0;  seatStatus[4][166]=0;  seatStatus[5][166]=0;
seatStatus[1][167]=0;  seatStatus[2][167]=0;  seatStatus[3][167]=0;  seatStatus[4][167]=0;  seatStatus[5][167]=0;
seatStatus[1][168]=0;  seatStatus[2][168]=0;  seatStatus[3][168]=0;  seatStatus[4][168]=0;  seatStatus[5][168]=0;
seatStatus[1][169]=1;  seatStatus[2][169]=0;  seatStatus[3][169]=0;  seatStatus[4][169]=0;  seatStatus[5][169]=0;
seatStatus[1][170]=1;  seatStatus[2][170]=0;  seatStatus[3][170]=0;  seatStatus[4][170]=0;  seatStatus[5][170]=0;
seatStatus[1][171]=1;  seatStatus[2][171]=0;  seatStatus[3][171]=0;  seatStatus[4][171]=0;  seatStatus[5][171]=0;
seatStatus[1][172]=1;  seatStatus[2][172]=0;  seatStatus[3][172]=0;  seatStatus[4][172]=0;  seatStatus[5][172]=0;
seatStatus[1][173]=1;  seatStatus[2][173]=0;  seatStatus[3][173]=0;  seatStatus[4][173]=0;  seatStatus[5][173]=0;
seatStatus[1][174]=1;  seatStatus[2][174]=0;  seatStatus[3][174]=0;  seatStatus[4][174]=0;  seatStatus[5][174]=0;
seatStatus[1][175]=1;  seatStatus[2][175]=0;  seatStatus[3][175]=0;  seatStatus[4][175]=0;  seatStatus[5][175]=0;
seatStatus[1][176]=1;  seatStatus[2][176]=0;  seatStatus[3][176]=0;  seatStatus[4][176]=0;  seatStatus[5][176]=0;
seatStatus[1][177]=1;  seatStatus[2][177]=0;  seatStatus[3][177]=0;  seatStatus[4][177]=0;  seatStatus[5][177]=0;
seatStatus[1][178]=1;  seatStatus[2][178]=0;  seatStatus[3][178]=0;  seatStatus[4][178]=0;  seatStatus[5][178]=0;
seatStatus[1][179]=1;  seatStatus[2][179]=0;  seatStatus[3][179]=0;  seatStatus[4][179]=0;  seatStatus[5][179]=0;
seatStatus[1][180]=1;  seatStatus[2][180]=0;  seatStatus[3][180]=0;  seatStatus[4][180]=0;  seatStatus[5][180]=0;
seatStatus[1][181]=1;  seatStatus[2][181]=0;  seatStatus[3][181]=0;  seatStatus[4][181]=0;  seatStatus[5][181]=0;
seatStatus[1][182]=1;  seatStatus[2][182]=0;  seatStatus[3][182]=0;  seatStatus[4][182]=0;  seatStatus[5][182]=0;
seatStatus[1][183]=1;  seatStatus[2][183]=0;  seatStatus[3][183]=0;  seatStatus[4][183]=0;  seatStatus[5][183]=0;
seatStatus[1][184]=1;  seatStatus[2][184]=0;  seatStatus[3][184]=0;  seatStatus[4][184]=0;  seatStatus[5][184]=0;
seatStatus[1][185]=1;  seatStatus[2][185]=0;  seatStatus[3][185]=0;  seatStatus[4][185]=0;  seatStatus[5][185]=0;
seatStatus[1][186]=1;  seatStatus[2][186]=0;  seatStatus[3][186]=0;  seatStatus[4][186]=0;  seatStatus[5][186]=0;
seatStatus[1][187]=1;  seatStatus[2][187]=0;  seatStatus[3][187]=0;  seatStatus[4][187]=0;  seatStatus[5][187]=0;
seatStatus[1][188]=1;  seatStatus[2][188]=0;  seatStatus[3][188]=1;  seatStatus[4][188]=0;  seatStatus[5][188]=0;
seatStatus[1][189]=1;  seatStatus[2][189]=0;  seatStatus[3][189]=1;  seatStatus[4][189]=0;  seatStatus[5][189]=0;
seatStatus[1][190]=1;  seatStatus[2][190]=0;  seatStatus[3][190]=1;  seatStatus[4][190]=0;  seatStatus[5][190]=0;
seatStatus[1][191]=1;  seatStatus[2][191]=0;  seatStatus[3][191]=1;  seatStatus[4][191]=0;  seatStatus[5][191]=0;
seatStatus[1][192]=1;  seatStatus[2][192]=0;  seatStatus[3][192]=1;  seatStatus[4][192]=0;  seatStatus[5][192]=0;
seatStatus[1][193]=1;  seatStatus[2][193]=0;  seatStatus[3][193]=1;  seatStatus[4][193]=0;  seatStatus[5][193]=0;
seatStatus[1][194]=1;  seatStatus[2][194]=0;  seatStatus[3][194]=1;  seatStatus[4][194]=0;  seatStatus[5][194]=0;
seatStatus[1][195]=1;  seatStatus[2][195]=0;  seatStatus[3][195]=1;  seatStatus[4][195]=0;  seatStatus[5][195]=0;
seatStatus[1][196]=0;  seatStatus[2][196]=0;  seatStatus[3][196]=1;  seatStatus[4][196]=0;  seatStatus[5][196]=0;
seatStatus[1][197]=0;  seatStatus[2][197]=0;  seatStatus[3][197]=1;  seatStatus[4][197]=0;  seatStatus[5][197]=0;
seatStatus[1][198]=0;  seatStatus[2][198]=0;  seatStatus[3][198]=1;  seatStatus[4][198]=0;  seatStatus[5][198]=0;
seatStatus[1][199]=0;  seatStatus[2][199]=0;  seatStatus[3][199]=1;  seatStatus[4][199]=0;  seatStatus[5][199]=0;
seatStatus[1][200]=0;  seatStatus[2][200]=0;  seatStatus[3][200]=1;  seatStatus[4][200]=0;  seatStatus[5][200]=0;
seatStatus[1][201]=1;  seatStatus[2][201]=0;  seatStatus[3][201]=1;  seatStatus[4][201]=0;  seatStatus[5][201]=0;
seatStatus[1][202]=1;  seatStatus[2][202]=0;  seatStatus[3][202]=1;  seatStatus[4][202]=0;  seatStatus[5][202]=0;
seatStatus[1][203]=1;  seatStatus[2][203]=0;  seatStatus[3][203]=1;  seatStatus[4][203]=0;  seatStatus[5][203]=0;
seatStatus[1][204]=1;  seatStatus[2][204]=0;  seatStatus[3][204]=1;  seatStatus[4][204]=0;  seatStatus[5][204]=0;
seatStatus[1][205]=1;  seatStatus[2][205]=0;  seatStatus[3][205]=1;  seatStatus[4][205]=0;  seatStatus[5][205]=0;
seatStatus[1][206]=1;  seatStatus[2][206]=0;  seatStatus[3][206]=1;  seatStatus[4][206]=0;  seatStatus[5][206]=0;
seatStatus[1][207]=1;  seatStatus[2][207]=0;  seatStatus[3][207]=1;  seatStatus[4][207]=0;  seatStatus[5][207]=0;
seatStatus[1][208]=1;  seatStatus[2][208]=0;  seatStatus[3][208]=1;  seatStatus[4][208]=0;  seatStatus[5][208]=0;
seatStatus[1][209]=1;  seatStatus[2][209]=0;  seatStatus[3][209]=1;  seatStatus[4][209]=0;  seatStatus[5][209]=0;
seatStatus[1][210]=1;  seatStatus[2][210]=0;  seatStatus[3][210]=1;  seatStatus[4][210]=0;  seatStatus[5][210]=0;
seatStatus[1][211]=1;  seatStatus[2][211]=0;  seatStatus[3][211]=1;  seatStatus[4][211]=0;  seatStatus[5][211]=0;
seatStatus[1][212]=1;  seatStatus[2][212]=0;  seatStatus[3][212]=1;  seatStatus[4][212]=0;  seatStatus[5][212]=0;
seatStatus[1][213]=1;  seatStatus[2][213]=0;  seatStatus[3][213]=1;  seatStatus[4][213]=0;  seatStatus[5][213]=0;
seatStatus[1][214]=1;  seatStatus[2][214]=0;  seatStatus[3][214]=1;  seatStatus[4][214]=0;  seatStatus[5][214]=0;
seatStatus[1][215]=1;  seatStatus[2][215]=0;  seatStatus[3][215]=1;  seatStatus[4][215]=1;  seatStatus[5][215]=0;
seatStatus[1][216]=1;  seatStatus[2][216]=0;  seatStatus[3][216]=1;  seatStatus[4][216]=1;  seatStatus[5][216]=0;
seatStatus[1][217]=1;  seatStatus[2][217]=0;  seatStatus[3][217]=1;  seatStatus[4][217]=1;  seatStatus[5][217]=0;
seatStatus[1][218]=1;  seatStatus[2][218]=0;  seatStatus[3][218]=1;  seatStatus[4][218]=1;  seatStatus[5][218]=0;
seatStatus[1][219]=1;  seatStatus[2][219]=0;  seatStatus[3][219]=1;  seatStatus[4][219]=1;  seatStatus[5][219]=0;
seatStatus[1][220]=1;  seatStatus[2][220]=0;  seatStatus[3][220]=1;  seatStatus[4][220]=1;  seatStatus[5][220]=0;
seatStatus[1][221]=1;  seatStatus[2][221]=0;  seatStatus[3][221]=1;  seatStatus[4][221]=1;  seatStatus[5][221]=0;
seatStatus[1][222]=1;  seatStatus[2][222]=0;  seatStatus[3][222]=1;  seatStatus[4][222]=1;  seatStatus[5][222]=0;
seatStatus[1][223]=1;  seatStatus[2][223]=0;  seatStatus[3][223]=1;  seatStatus[4][223]=1;  seatStatus[5][223]=0;
seatStatus[1][224]=1;  seatStatus[2][224]=0;  seatStatus[3][224]=1;  seatStatus[4][224]=1;  seatStatus[5][224]=0;
seatStatus[1][225]=1;  seatStatus[2][225]=0;  seatStatus[3][225]=1;  seatStatus[4][225]=1;  seatStatus[5][225]=0;
seatStatus[1][226]=1;  seatStatus[2][226]=0;  seatStatus[3][226]=1;  seatStatus[4][226]=1;  seatStatus[5][226]=0;
seatStatus[1][227]=1;  seatStatus[2][227]=0;  seatStatus[3][227]=1;  seatStatus[4][227]=1;  seatStatus[5][227]=0;
seatStatus[1][228]=1;  seatStatus[2][228]=0;  seatStatus[3][228]=1;  seatStatus[4][228]=1;  seatStatus[5][228]=0;
seatStatus[1][229]=1;  seatStatus[2][229]=0;  seatStatus[3][229]=0;  seatStatus[4][229]=1;  seatStatus[5][229]=0;
seatStatus[1][230]=1;  seatStatus[2][230]=0;  seatStatus[3][230]=0;  seatStatus[4][230]=1;  seatStatus[5][230]=0;
seatStatus[1][231]=1;  seatStatus[2][231]=0;  seatStatus[3][231]=0;  seatStatus[4][231]=1;  seatStatus[5][231]=0;
seatStatus[1][232]=1;  seatStatus[2][232]=0;  seatStatus[3][232]=0;  seatStatus[4][232]=1;  seatStatus[5][232]=0;
seatStatus[1][233]=1;  seatStatus[2][233]=0;  seatStatus[3][233]=0;  seatStatus[4][233]=1;  seatStatus[5][233]=0;
seatStatus[1][234]=1;  seatStatus[2][234]=0;  seatStatus[3][234]=0;  seatStatus[4][234]=1;  seatStatus[5][234]=0;
seatStatus[1][235]=1;  seatStatus[2][235]=0;  seatStatus[3][235]=0;  seatStatus[4][235]=1;  seatStatus[5][235]=0;
seatStatus[1][236]=1;  seatStatus[2][236]=0;  seatStatus[3][236]=0;  seatStatus[4][236]=1;  seatStatus[5][236]=0;
seatStatus[1][237]=1;  seatStatus[2][237]=0;  seatStatus[3][237]=0;  seatStatus[4][237]=1;  seatStatus[5][237]=0;
seatStatus[1][238]=1;  seatStatus[2][238]=0;  seatStatus[3][238]=0;  seatStatus[4][238]=1;  seatStatus[5][238]=0;
seatStatus[1][239]=1;  seatStatus[2][239]=0;  seatStatus[3][239]=0;  seatStatus[4][239]=1;  seatStatus[5][239]=0;
seatStatus[1][240]=0;  seatStatus[2][240]=0;  seatStatus[3][240]=0;  seatStatus[4][240]=1;  seatStatus[5][240]=0;
seatStatus[1][241]=0;  seatStatus[2][241]=0;  seatStatus[3][241]=0;  seatStatus[4][241]=1;  seatStatus[5][241]=0;
seatStatus[1][242]=0;  seatStatus[2][242]=0;  seatStatus[3][242]=0;  seatStatus[4][242]=1;  seatStatus[5][242]=0;
seatStatus[1][243]=0;  seatStatus[2][243]=0;  seatStatus[3][243]=0;  seatStatus[4][243]=1;  seatStatus[5][243]=0;
seatStatus[1][244]=0;  seatStatus[2][244]=0;  seatStatus[3][244]=0;  seatStatus[4][244]=1;  seatStatus[5][244]=0;
seatStatus[1][245]=0;  seatStatus[2][245]=0;  seatStatus[3][245]=0;  seatStatus[4][245]=1;  seatStatus[5][245]=0;
seatStatus[1][246]=0;  seatStatus[2][246]=1;  seatStatus[3][246]=0;  seatStatus[4][246]=1;  seatStatus[5][246]=0;
seatStatus[1][247]=0;  seatStatus[2][247]=1;  seatStatus[3][247]=0;  seatStatus[4][247]=1;  seatStatus[5][247]=0;
seatStatus[1][248]=0;  seatStatus[2][248]=1;  seatStatus[3][248]=0;  seatStatus[4][248]=1;  seatStatus[5][248]=0;
seatStatus[1][249]=0;  seatStatus[2][249]=1;  seatStatus[3][249]=0;  seatStatus[4][249]=1;  seatStatus[5][249]=0;
seatStatus[1][250]=0;  seatStatus[2][250]=1;  seatStatus[3][250]=0;  seatStatus[4][250]=1;  seatStatus[5][250]=0;
seatStatus[1][251]=0;  seatStatus[2][251]=1;  seatStatus[3][251]=0;  seatStatus[4][251]=1;  seatStatus[5][251]=0;
seatStatus[1][252]=0;  seatStatus[2][252]=0;  seatStatus[3][252]=0;  seatStatus[4][252]=0;  seatStatus[5][252]=0;
seatStatus[1][253]=0;  seatStatus[2][253]=0;  seatStatus[3][253]=0;  seatStatus[4][253]=0;  seatStatus[5][253]=0;
seatStatus[1][254]=0;  seatStatus[2][254]=0;  seatStatus[3][254]=0;  seatStatus[4][254]=0;  seatStatus[5][254]=0;
seatStatus[1][255]=0;  seatStatus[2][255]=0;  seatStatus[3][255]=0;  seatStatus[4][255]=0;  seatStatus[5][255]=0;
seatStatus[1][256]=0;  seatStatus[2][256]=0;  seatStatus[3][256]=0;  seatStatus[4][256]=0;  seatStatus[5][256]=0;
seatStatus[1][257]=0;  seatStatus[2][257]=0;  seatStatus[3][257]=0;  seatStatus[4][257]=0;  seatStatus[5][257]=0;
seatStatus[1][258]=0;  seatStatus[2][258]=0;  seatStatus[3][258]=0;  seatStatus[4][258]=0;  seatStatus[5][258]=0;
seatStatus[1][259]=1;  seatStatus[2][259]=1;  seatStatus[3][259]=1;  seatStatus[4][259]=1;  seatStatus[5][259]=1;
seatStatus[1][260]=1;  seatStatus[2][260]=1;  seatStatus[3][260]=1;  seatStatus[4][260]=1;  seatStatus[5][260]=1;
seatStatus[1][261]=1;  seatStatus[2][261]=1;  seatStatus[3][261]=1;  seatStatus[4][261]=1;  seatStatus[5][261]=1;
seatStatus[1][262]=1;  seatStatus[2][262]=1;  seatStatus[3][262]=1;  seatStatus[4][262]=1;  seatStatus[5][262]=1;
seatStatus[1][263]=1;  seatStatus[2][263]=1;  seatStatus[3][263]=1;  seatStatus[4][263]=1;  seatStatus[5][263]=1;
seatStatus[1][264]=1;  seatStatus[2][264]=1;  seatStatus[3][264]=1;  seatStatus[4][264]=1;  seatStatus[5][264]=1;
seatStatus[1][265]=1;  seatStatus[2][265]=1;  seatStatus[3][265]=1;  seatStatus[4][265]=1;  seatStatus[5][265]=1;
seatStatus[1][266]=1;  seatStatus[2][266]=1;  seatStatus[3][266]=1;  seatStatus[4][266]=1;  seatStatus[5][266]=1;
seatStatus[1][267]=1;  seatStatus[2][267]=1;  seatStatus[3][267]=1;  seatStatus[4][267]=1;  seatStatus[5][267]=1;
seatStatus[1][268]=1;  seatStatus[2][268]=1;  seatStatus[3][268]=1;  seatStatus[4][268]=1;  seatStatus[5][268]=1;
seatStatus[1][269]=1;  seatStatus[2][269]=1;  seatStatus[3][269]=1;  seatStatus[4][269]=1;  seatStatus[5][269]=1;
seatStatus[1][270]=1;  seatStatus[2][270]=1;  seatStatus[3][270]=1;  seatStatus[4][270]=1;  seatStatus[5][270]=1;
seatStatus[1][271]=1;  seatStatus[2][271]=1;  seatStatus[3][271]=1;  seatStatus[4][271]=1;  seatStatus[5][271]=1;
seatStatus[1][272]=1;  seatStatus[2][272]=1;  seatStatus[3][272]=1;  seatStatus[4][272]=1;  seatStatus[5][272]=1;
seatStatus[1][273]=1;  seatStatus[2][273]=1;  seatStatus[3][273]=1;  seatStatus[4][273]=1;  seatStatus[5][273]=1;
seatStatus[1][274]=1;  seatStatus[2][274]=1;  seatStatus[3][274]=1;  seatStatus[4][274]=1;  seatStatus[5][274]=1;
seatStatus[1][275]=1;  seatStatus[2][275]=1;  seatStatus[3][275]=1;  seatStatus[4][275]=1;  seatStatus[5][275]=1;
seatStatus[1][276]=1;  seatStatus[2][276]=1;  seatStatus[3][276]=1;  seatStatus[4][276]=1;  seatStatus[5][276]=1;
seatStatus[1][277]=1;  seatStatus[2][277]=1;  seatStatus[3][277]=1;  seatStatus[4][277]=1;  seatStatus[5][277]=1;
seatStatus[1][278]=1;  seatStatus[2][278]=1;  seatStatus[3][278]=1;  seatStatus[4][278]=1;  seatStatus[5][278]=1;
seatStatus[1][279]=1;  seatStatus[2][279]=1;  seatStatus[3][279]=1;  seatStatus[4][279]=1;  seatStatus[5][279]=1;
seatStatus[1][280]=1;  seatStatus[2][280]=1;  seatStatus[3][280]=1;  seatStatus[4][280]=1;  seatStatus[5][280]=1;
seatStatus[1][281]=1;  seatStatus[2][281]=1;  seatStatus[3][281]=1;  seatStatus[4][281]=1;  seatStatus[5][281]=1;
seatStatus[1][282]=1;  seatStatus[2][282]=1;  seatStatus[3][282]=1;  seatStatus[4][282]=1;  seatStatus[5][282]=1;
seatStatus[1][283]=1;  seatStatus[2][283]=1;  seatStatus[3][283]=1;  seatStatus[4][283]=1;  seatStatus[5][283]=1;
seatStatus[1][284]=1;  seatStatus[2][284]=1;  seatStatus[3][284]=1;  seatStatus[4][284]=1;  seatStatus[5][284]=1;
seatStatus[1][285]=1;  seatStatus[2][285]=1;  seatStatus[3][285]=1;  seatStatus[4][285]=1;  seatStatus[5][285]=1;
seatStatus[1][286]=1;  seatStatus[2][286]=1;  seatStatus[3][286]=1;  seatStatus[4][286]=1;  seatStatus[5][286]=1;
seatStatus[1][287]=1;  seatStatus[2][287]=1;  seatStatus[3][287]=1;  seatStatus[4][287]=1;  seatStatus[5][287]=1;
seatStatus[1][288]=1;  seatStatus[2][288]=1;  seatStatus[3][288]=1;  seatStatus[4][288]=1;  seatStatus[5][288]=1;
seatStatus[1][289]=0;  seatStatus[2][289]=0;  seatStatus[3][289]=1;  seatStatus[4][289]=0;  seatStatus[5][289]=0;
seatStatus[1][290]=0;  seatStatus[2][290]=0;  seatStatus[3][290]=1;  seatStatus[4][290]=0;  seatStatus[5][290]=0;
seatStatus[1][291]=0;  seatStatus[2][291]=0;  seatStatus[3][291]=1;  seatStatus[4][291]=0;  seatStatus[5][291]=0;
seatStatus[1][292]=0;  seatStatus[2][292]=0;  seatStatus[3][292]=1;  seatStatus[4][292]=0;  seatStatus[5][292]=0;
seatStatus[1][293]=0;  seatStatus[2][293]=0;  seatStatus[3][293]=1;  seatStatus[4][293]=0;  seatStatus[5][293]=0;
seatStatus[1][294]=0;  seatStatus[2][294]=0;  seatStatus[3][294]=1;  seatStatus[4][294]=0;  seatStatus[5][294]=0;
seatStatus[1][295]=0;  seatStatus[2][295]=0;  seatStatus[3][295]=1;  seatStatus[4][295]=0;  seatStatus[5][295]=0;
seatStatus[1][296]=0;  seatStatus[2][296]=0;  seatStatus[3][296]=1;  seatStatus[4][296]=0;  seatStatus[5][296]=0;
seatStatus[1][297]=0;  seatStatus[2][297]=0;  seatStatus[3][297]=1;  seatStatus[4][297]=0;  seatStatus[5][297]=0;
seatStatus[1][298]=0;  seatStatus[2][298]=0;  seatStatus[3][298]=1;  seatStatus[4][298]=0;  seatStatus[5][298]=0;
seatStatus[1][299]=0;  seatStatus[2][299]=0;  seatStatus[3][299]=1;  seatStatus[4][299]=0;  seatStatus[5][299]=0;
seatStatus[1][300]=0;  seatStatus[2][300]=0;  seatStatus[3][300]=0;  seatStatus[4][300]=0;  seatStatus[5][300]=0;
}