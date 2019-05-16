//Last Update 8 mei 2019

ClassOneDropDownMenu[] menuList = new ClassOneDropDownMenu[5];
PrintWriter output;
ArrayList<Node> nodes, rok1, rok2, rok3, garisRok, garisRok2, polaRok1, polaRok2, polaRok3, polaRok4, polaRok5;
ArrayList<Node> atasan1, atasan2, atasan3, garisAtasan, garisAtasan2, polaAtasan1, polaAtasan2, polaAtasan3, polaAtasan4, polaAtasan5;
ArrayList<Node> gaun1, gaun2, gaun3, garisGaun, garisGaun2, polaGaun1, polaGaun2, polaGaun3, polaGaun4, polaGaun5;
ArrayList<Node> celana1, celana2, celana3, garisCelana, garisCelana2, polaCelana1, polaCelana2, polaCelana3, polaCelana4, polaCelana5;
ArrayList<Node> atasanlk1, atasanlk2, atasanlk3, garisAtasanlk, garisAtasanlk2, polaAtasanlk1, polaAtasanlk2, polaAtasanlk3, polaAtasanlk4, polaAtasanlk5;
ArrayList<Node> celanalk1, celanalk2, celanalk3, garisCelanalk, garisCelanalk2, polaCelanalk1, polaCelanalk2, polaCelanalk3, polaCelanalk4, polaCelanalk5;
ArrayList<Floor> floors;
PGraphics[] pg = new PGraphics[19];
String[] urlTex1 = new String[56], urlTex2 = new String[56],
urlTex3 = new String[56], urlTex4 = new String[56], urlTex5 = new String[56], urlTex6 = new String[56];
String urlTexture, urlRok;
PImage[] img2d = new PImage[21], imgtex1 = new PImage[56], imgtex2 = new PImage[56],
imgtex3 = new PImage[56], imgtex4 = new PImage[56], imgtex5 = new PImage[56], imgtex6 = new PImage[56], imgRok = new PImage[11], imgKulot = new PImage[11],
imgAtasan = new PImage[11], imgGaun = new PImage[11], imgCelana = new PImage[11], imgAtasanLk = new PImage[11], imgCelanaLk = new PImage[11];
PImage imageTexture;
//float h_default = 25, tinggi_gedung = 0, scale = 1, transX = 0, transY = 0, transZ = 0, rotY = 0;
int nodesSize = 0, template2d = 0, selectedTex = 0, geserNode = -1, templateRok = 0, templateAtasan = 0, templateGaun = 0, templateCelana = 0, templateAtasanlk = 0, 
templateCelanalk = 0;
boolean pgConvert = true, pg2D = false, pgTutor = true, pgAction = true,
 pgTex1 = false, pgTex2 = false, pgTex3 = false, pgTex4 = false, pgTex5 = false, pgTex6 = false, pgRok = false, pgAtasan = false, pgGaun = false, pgCelana = false, pgAtasanLk = false,
 pgCelanaLk = false;
//boolean translasiX = false, translasiY = false, rotasiY= false, translasiZ= false;
boolean  showCenter = false, grid3D = true, grid2D = true, threeDimension = false, controlDown = false, shiftDown = false, newProject = true;
//boolean translate2D = false;
boolean citraKain = false;
boolean rok = false, atasan = false, gaun = false, celana = false, atasanlk = false, celanalk = false;
int c;


public void setup() {
  //size(1200, 500, P3D);
  fullScreen(P3D);
  noSmooth();
  pg[1] = createGraphics(width, 25, P3D); //menubar
  pg[2] = createGraphics(width/3, height-325, P3D); //menubar
  for(int i=3; i<=9; i++)
    pg[i] = createGraphics(width/3, height-25, P3D); //draw 2D
  pg[10] = createGraphics(width/3, 300, P3D); //menubar
  pg[11] = createGraphics(width/3, height-25, P3D); //menubar
  pg[12] = createGraphics(width/3, height-25, P3D); // Template Rok
  pg[13] = createGraphics(width/3, height-25, P3D); // Template Kulot
  pg[14] = createGraphics(width/3, height-25, P3D); // Template Atasan
  pg[15] = createGraphics(width/3, height-25, P3D); // Template Gaun
  pg[16] = createGraphics(width/3, height-25, P3D); // Template Celana
  pg[17] = createGraphics(width/3, height-25, P3D); //Template Atasan Laki-laki
  pg[18] = createGraphics(width/3, height-25, P3D); //Template Celana Laki-laki
    
  nodes = new ArrayList<Node>();
  rok1 = new ArrayList<Node>();
  rok2 = new ArrayList<Node>();
  rok3 = new ArrayList<Node>();
  garisRok = new ArrayList<Node>();
  garisRok2 = new ArrayList<Node>();
  polaRok1 = new ArrayList<Node>();
  polaRok2 = new ArrayList<Node>();
  polaRok3 = new ArrayList<Node>();
  polaRok4 = new ArrayList<Node>();
  polaRok5 = new ArrayList<Node>();
  atasan1 = new ArrayList<Node>();
  atasan2 = new ArrayList<Node>();
  atasan3 = new ArrayList<Node>();
  garisAtasan = new ArrayList<Node>();
  garisAtasan2 = new ArrayList<Node>();
  polaAtasan1 = new ArrayList<Node>();
  polaAtasan2 = new ArrayList<Node>();
  polaAtasan3 = new ArrayList<Node>();
  polaAtasan4 = new ArrayList<Node>();
  polaAtasan5 = new ArrayList<Node>();
  gaun1 = new ArrayList<Node>();
  gaun2 = new ArrayList<Node>();
  gaun3 = new ArrayList<Node>();
  garisGaun = new ArrayList<Node>();
  garisGaun2 = new ArrayList<Node>();
  polaGaun1 = new ArrayList<Node>();
  polaGaun2 = new ArrayList<Node>();
  polaGaun3 = new ArrayList<Node>();
  polaGaun4 = new ArrayList<Node>();
  polaGaun5 = new ArrayList<Node>();
  celana1 = new ArrayList<Node>();
  celana2 = new ArrayList<Node>();
  celana3 = new ArrayList<Node>();
  garisCelana = new ArrayList<Node>();
  garisCelana2 = new ArrayList<Node>();
  polaCelana1 = new ArrayList<Node>();
  polaCelana2 = new ArrayList<Node>();
  polaCelana3 = new ArrayList<Node>();
  polaCelana4 = new ArrayList<Node>();
  polaCelana5 = new ArrayList<Node>();
  atasanlk1 = new ArrayList<Node>();
  atasanlk2 = new ArrayList<Node>();
  atasanlk3 = new ArrayList<Node>();
  garisAtasanlk = new ArrayList<Node>();
  garisAtasanlk2 = new ArrayList<Node>();
  polaAtasanlk1 = new ArrayList<Node>();
  polaAtasanlk2 = new ArrayList<Node>();
  polaAtasanlk3 = new ArrayList<Node>();
  polaAtasanlk4 = new ArrayList<Node>();
  polaAtasanlk5 = new ArrayList<Node>();
  celanalk1 = new ArrayList<Node>();
  celanalk2 = new ArrayList<Node>();
  celanalk3 = new ArrayList<Node>();
  garisCelanalk = new ArrayList<Node>();
  garisCelanalk2 = new ArrayList<Node>();
  polaCelanalk1 = new ArrayList<Node>();
  polaCelanalk2 = new ArrayList<Node>();
  polaCelanalk3 = new ArrayList<Node>();
  polaCelanalk4 = new ArrayList<Node>();
  polaCelanalk5 = new ArrayList<Node>();
  
  
  //floors = new ArrayList<Floor>();
  urlTexture = "Textures/a/imgtex_default.jpg";
  defineMenus();
  
  //for(int i=floors.size()-1; i>=0; i--){
  //  floors.get(i).imageTexture = loadImage("Textures/a/imgtex_default.jpg");
  //  floors.get(i).urlTexture = "Textures/a/imgtex_default.jpg";
  //}
  for(int i=1; i<urlTex1.length; i++){
    urlTex1[i] = "Textures/a/imgtex ("+i+").jpg";
    imgtex1[i] = loadImage(urlTex1[i]);
  }
  for(int i=1; i<urlTex2.length; i++){
    urlTex2[i] = "Textures/b/imgtex ("+i+").jpg";
    imgtex2[i] = loadImage(urlTex2[i]);
  }
  for(int i=1; i<urlTex3.length; i++){
    urlTex3[i] = "Textures/c/imgtex ("+i+").jpg";
    imgtex3[i] = loadImage(urlTex3[i]);
  }
  for(int i=1; i<urlTex4.length; i++){
    urlTex4[i] = "Textures/d/imgtex ("+i+").jpg";
    imgtex4[i] = loadImage(urlTex4[i]);
  }
  for(int i=1; i<urlTex5.length; i++){
    urlTex5[i] = "Textures/e/imgtex ("+i+").jpg";
    imgtex5[i] = loadImage(urlTex5[i]);
  }
  //for(int i=1; i<urlTex6.length; i++){
  //  urlTex6[i] = "Textures/f/imgtex ("+i+").jpg";
  //  imgtex6[i] = loadImage(urlTex6[i]);
  //}
  //for(int i=1; i<img2d.length; i++){
  //  img2d[i] = loadImage("Templates_2D/2dt_"+i+".jpg");
  //}
  for(int i=1; i<imgRok.length; i++){
    imgRok[i] = loadImage("Busana_Rok/Rok_"+i+".jpg");
  }
  for(int i=1; i<imgAtasan.length; i++){
    imgAtasan[i] = loadImage("Busana_Atasan/Atasan_"+i+".jpg");
  }
  for(int i=1; i<imgGaun.length; i++){
    imgGaun[i] = loadImage("Busana_Gaun/Gaun_"+i+".jpg");
  }
  for(int i=1; i<imgCelana.length; i++){
    imgCelana[i] = loadImage("Busana_Celana/Celana_"+i+".jpg");
  }
  for(int i=1; i<imgAtasanLk.length; i++){
    imgAtasanLk[i] = loadImage("Busana_AtasanLk/AtasanLk_"+i+".jpg");
  }
  for(int i=1; i<imgCelanaLk.length; i++){
    imgCelanaLk[i] = loadImage("Busana_CelanaLk/CelanaLk_"+i+".jpg");
  }
}

public void draw() {
  drawPgMenuBar();
  drawPgBasement2D();
  drawPgBasement3D();
  //drawPgTemplate2D();
  drawPgTemplateRok();
  //drawPgTemplateKulot();
  drawPgTemplateAtasan();
  drawPgTemplateGaun();
  drawPgTemplateCelana();
  drawPgTemplateAtasanLk();
  drawPgTemplateCelanaLk();
  drawPgTutorial();
 // drawPgAction();
  drawBasement();
  imagePgs();
  drawMenuBar();
}

public void base(){  
  pg[3].beginDraw();
  pg[3].fill(35);
  //if(pgRok) {
  if(rok) {
    
    pg[3].beginShape(POLYGON);
    if(citraKain)
     pg[3].texture(imageTexture);
    for(int i = rok1.size()-1; i >= 0; i--)
     pg[3].vertex(rok1.get(i).x, rok1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = rok2.size()-1; i >= 0; i--)
      pg[3].vertex(rok2.get(i).x, rok2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = rok3.size()-1; i >= 0; i--)
      pg[3].vertex(rok3.get(i).x, rok3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    
    pg[3].beginShape(LINES);
    for(int i = garisRok.size()-1; i >= 0; i--)
      pg[3].vertex(garisRok.get(i).x, garisRok.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for(int i = garisRok2.size()-1; i >= 0; i--)
      pg[3].vertex(garisRok2.get(i).x, garisRok2.get(i).z-pg[1].height);
    pg[3].endShape();
    
  }
  //else if(pgAtasan) {
  if(atasan) {
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasan1.size()-1; i >= 0; i--)
      pg[3].vertex(atasan1.get(i).x, atasan1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasan2.size()-1; i >= 0; i--)
      pg[3].vertex(atasan2.get(i).x, atasan2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasan3.size()-1; i >= 0; i--)
      pg[3].vertex(atasan3.get(i).x, atasan3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for(int i = garisAtasan.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasan.get(i).x, garisAtasan.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for(int i = garisAtasan2.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasan2.get(i).x, garisAtasan2.get(i).z-pg[1].height);
    pg[3].endShape(); 
  }
  
   //else if(pgGaun) {
  if(gaun) {
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = gaun1.size()-1; i >= 0; i--)
      pg[3].vertex(gaun1.get(i).x, gaun1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = gaun2.size()-1; i >= 0; i--)
      pg[3].vertex(gaun2.get(i).x, gaun2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = gaun3.size()-1; i >= 0; i--)
      pg[3].vertex(gaun3.get(i).x, gaun3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for(int i = garisGaun.size()-1; i >= 0; i--)
      pg[3].vertex(garisGaun.get(i).x, garisGaun.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for(int i = garisGaun2.size()-1; i >= 0; i--)
      pg[3].vertex(garisGaun2.get(i).x, garisGaun2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  
   //else if(pgCelana) {
  if(celana) {
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celana1.size()-1; i >= 0; i--)
      pg[3].vertex(celana1.get(i).x, celana1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celana2.size()-1; i >= 0; i--)
      pg[3].vertex(celana2.get(i).x, celana2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celana3.size()-1; i >= 0; i--)
      pg[3].vertex(celana3.get(i).x, celana3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for(int i = garisCelana.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelana.get(i).x, garisCelana.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for(int i = garisCelana2.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelana2.get(i).x, garisCelana2.get(i).z-pg[1].height);
    pg[3].endShape();  
  }
  
   //else if(pgAtasanlk) {
  if(atasanlk) {
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasanlk1.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk1.get(i).x, atasanlk1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasanlk2.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk2.get(i).x, atasanlk2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = atasanlk3.size()-1; i >= 0; i--)
      pg[3].vertex(atasanlk3.get(i).x, atasanlk3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for(int i = garisAtasanlk.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasanlk.get(i).x, garisAtasanlk.get(i).z-pg[1].height);
    pg[3].endShape();  
    pg[3].beginShape(LINES);
    for(int i = garisAtasanlk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisAtasanlk2.get(i).x, garisAtasanlk2.get(i).z-pg[1].height);
    pg[3].endShape();
  }
  
  //else if(pgCelanalk) {
  if(celanalk) {
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celanalk1.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk1.get(i).x, celanalk1.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE); 
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celanalk2.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk2.get(i).x, celanalk2.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(POLYGON);
    if(citraKain)
      pg[3].texture(imageTexture);
    for(int i = celanalk3.size()-1; i >= 0; i--)
      pg[3].vertex(celanalk3.get(i).x, celanalk3.get(i).z-pg[1].height);
    pg[3].endShape(CLOSE);
    pg[3].beginShape(LINES);
    for(int i = garisCelanalk.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelanalk.get(i).x, garisCelanalk.get(i).z-pg[1].height);
    pg[3].endShape();  
    for(int i = garisCelanalk2.size()-1; i >= 0; i--)
      pg[3].vertex(garisCelanalk2.get(i).x, garisCelanalk2.get(i).z-pg[1].height);
    pg[3].endShape(); 
  }
  pg[3].endDraw();
}

public void base1(){
  pg[2].beginDraw();
  pg[2].fill(35);
  //if(pgRok) {
  if(rok) {
    pg[2].beginShape(POLYGON);
    for(int i = polaRok1.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok1.get(i).x, polaRok1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaRok2.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok2.get(i).x, polaRok2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaRok3.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok3.get(i).x, polaRok3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for(int i = polaRok4.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok4.get(i).x, polaRok4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaRok5.size()-1; i >= 0; i--)
      pg[2].vertex(polaRok5.get(i).x, polaRok5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  //else if(pgAtasan) {
  if(atasan) {
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasan1.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan1.get(i).x, polaAtasan1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasan2.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan2.get(i).x, polaAtasan2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasan3.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan3.get(i).x, polaAtasan3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaAtasan4.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan4.get(i).x, polaAtasan4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaAtasan5.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasan5.get(i).x, polaAtasan5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
  }
  //else if (pgGaun)
  if(gaun) {
    pg[2].beginShape(POLYGON);
    for(int i = polaGaun1.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun1.get(i).x, polaGaun1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaGaun2.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun2.get(i).x, polaGaun2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaGaun3.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun3.get(i).x, polaGaun3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaGaun4.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun4.get(i).x, polaGaun4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    for(int i = polaGaun4.size()-1; i >= 0; i--)
      pg[2].vertex(polaGaun4.get(i).x, polaGaun4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
  }
  //else if (pgCelana)
  if(celana) {
    pg[2].beginShape(POLYGON);
    for(int i = polaCelana1.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana1.get(i).x, polaCelana1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaCelana2.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana2.get(i).x, polaCelana2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaCelana3.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana3.get(i).x, polaCelana3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaCelana4.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana4.get(i).x, polaCelana4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaCelana5.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelana5.get(i).x, polaCelana5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
  }
  
  //else if(pgAtasanlk) {
  if(atasanlk) {
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasanlk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk1.get(i).x, polaAtasanlk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasanlk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk2.get(i).x, polaAtasanlk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasanlk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk3.get(i).x, polaAtasanlk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    pg[2].beginShape(POLYGON);
    for(int i = polaAtasanlk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk4.get(i).x, polaAtasanlk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaAtasanlk5.size()-1; i >= 0; i--)
      pg[2].vertex(polaAtasanlk5.get(i).x, polaAtasanlk5.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
  }
  
  //else if (pgCelanalk)
  if(celanalk) {
    pg[2].beginShape(POLYGON);
    for(int i = polaCelanalk1.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk1.get(i).x, polaCelanalk1.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaCelanalk2.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk2.get(i).x, polaCelanalk2.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE);
    pg[2].beginShape(POLYGON);
    for(int i = polaCelanalk3.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk3.get(i).x, polaCelanalk3.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaCelanalk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk4.get(i).x, polaCelanalk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
    for(int i = polaCelanalk4.size()-1; i >= 0; i--)
      pg[2].vertex(polaCelanalk4.get(i).x, polaCelanalk4.get(i).z-pg[1].height);
    pg[2].endShape(CLOSE); 
  }
  
  pg[2].endDraw();
}


void newProject(){
  background(255);
  newProject = true;
  for(int i = nodes.size()-1; i >= 0; i--)
    nodes.remove(nodes.get(i));
  //for(int i = floors.size()-1; i >= 0; i--)
  //  floors.remove(floors.get(i));
}


public void selectRok(){
  if(templateRok>0){
    if(!newProject) {
      for(int i = rok1.size()-1; i >= 0; i--)
        rok1.remove(rok1.get(i));
      for(int i = rok2.size()-1; i >= 0; i--)
        rok2.remove(rok2.get(i));
      for(int i = rok3.size()-1; i >= 0; i--)
        rok3.remove(rok3.get(i));
      for(int i = garisRok.size()-1; i >= 0; i--)
        garisRok.remove(garisRok.get(i));
      for(int i = garisRok2.size()-1; i >= 0; i--)
        garisRok2.remove(garisRok2.get(i));  
      for(int i = polaRok1.size()-1; i >= 0; i--)
        polaRok1.remove(polaRok1.get(i));
      for(int i = polaRok2.size()-1; i >= 0; i--)
        polaRok2.remove(polaRok2.get(i));
      for(int i = polaRok3.size()-1; i >= 0; i--)
        polaRok3.remove(polaRok3.get(i));
      for(int i = polaRok4.size()-1; i >= 0; i--)
        polaRok4.remove(polaRok4.get(i));
      for(int i = polaRok5.size()-1; i >= 0; i--)
        polaRok5.remove(polaRok5.get(i));
    }
        
    newProject = true;
    if(templateRok==1){ //Pola Dasar Rok
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+60,600));
      rok2.add(new Node(pg[3].width/2-60,600));
      
      garisRok.add(new Node(pg[3].width/2-20,400));
      garisRok.add(new Node(pg[3].width/2-20,450));
      garisRok.add(new Node(pg[3].width/2+20,400));
      garisRok.add(new Node(pg[3].width/2+20,450));
      
      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)10.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 61.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)10.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)29.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 61.5*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3)); 
    }
    if(templateRok==2){ //Rok Span/Suai (Pola Ban Belum)
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+45,450));
      rok2.add(new Node(pg[3].width/2+50,600));
      rok2.add(new Node(pg[3].width/2-50,600));
      rok2.add(new Node(pg[3].width/2-45,450));
      
      garisRok.add(new Node(pg[3].width/2-20,400));
      garisRok.add(new Node(pg[3].width/2-20,450));
      garisRok.add(new Node(pg[3].width/2+20,400));
      garisRok.add(new Node(pg[3].width/2+20,450));
      
      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)10.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 60*3)); //D
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)10.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 40*3)); //D
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 40*3)); //D1
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 60*3)); //D2
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 60*3)); //D3
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 60*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+28*3+250, 250+(float) 1.1*3)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)29.5*3+250, 250+(float) 13*3)); //K
      polaRok3.add(new Node(pg[2].width/20+31*3+250, 250+(float) 0.9*3)); //M
      polaRok3.add(new Node(pg[2].width/20+37*3+250, 250+ (float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 17*3)); //F
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 60*3)); //H
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 60*3)); //D3
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 60*3)); //D2
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 40*3)); //D1
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 40*3)); //D
      
      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3)); 
      
      
    }
    if(templateRok==3){ //Pola Rok Span/Suai 2 Kupnat (Pola Ban Belum)
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+45,450));
      rok2.add(new Node(pg[3].width/2+50,600));
      rok2.add(new Node(pg[3].width/2-50,600));
      rok2.add(new Node(pg[3].width/2-45,450));
      
      garisRok.add(new Node(pg[3].width/2-18,400));
      garisRok.add(new Node(pg[3].width/2-18,450));
      garisRok.add(new Node(pg[3].width/2+18,400));
      garisRok.add(new Node(pg[3].width/2+18,450));
      garisRok.add(new Node(pg[3].width/2-28,400));
      garisRok.add(new Node(pg[3].width/2-28,440));
      garisRok.add(new Node(pg[3].width/2+28,400));
      garisRok.add(new Node(pg[3].width/2+28,440));
      
      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+6*3, 250+(float) 0.9*3)); //M"
      polaRok1.add(new Node(pg[2].width/20+(float)7.5*3, 250+(float) 13*3)); //K"
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)13.5*3, 250+(float) 15*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+15*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+25*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)26.5*3, 250+(float) 15*3)); //K
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+(float)32.5*3, 250+(float) 13*3)); //K1
      polaRok1.add(new Node(pg[2].width/20+33*3, 250+(float) 0.9*3)); //M1
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 60*3)); //D
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+6*3+200, 250+(float) 0.9*3)); //M"
      polaRok2.add(new Node(pg[2].width/20+(float)7.5*3+200, 250+(float) 13*3)); //K"
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)13.5*3+200, 250+(float) 15*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+15*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 40*3)); //D
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 40*3)); //D1
      polaRok2.add(new Node(pg[2].width/20+26*3+200, 250+(float) 60*3)); //D2
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 60*3)); //D3
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 60*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+25*3+250, 250+(float) 1.1*3)); //L
      polaRok3.add(new Node(pg[2].width/20+(float)26.5*3+250, 250+(float) 15*3)); //K
      polaRok3.add(new Node(pg[2].width/20+28*3+250, 250+(float) 0.9*3)); //M
      polaRok3.add(new Node(pg[2].width/20+31*3+250, 250+(float) 0.9*3)); //L1
      polaRok3.add(new Node(pg[2].width/20+(float)32.5*3+250, 250+(float) 13*3)); //K1
      polaRok3.add(new Node(pg[2].width/20+33*3+250, 250+(float) 0.9*3)); //M1
      polaRok3.add(new Node(pg[2].width/20+37*3+250, 250+ (float) 0*3)); //E
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 17*3)); //F
      polaRok3.add(new Node(pg[2].width/20+40*3+250, 250+ (float) 60*3)); //H
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 60*3)); //D3
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 60*3)); //D2
      polaRok3.add(new Node(pg[2].width/20+14*3+250, 250+(float) 40*3)); //D1
      polaRok3.add(new Node(pg[2].width/20+20*3+250, 250+(float) 40*3)); //D
      
      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok4.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3)); 
    }
    if(templateRok==4){ // Rok Lipit Hadap I (Belum Saku)
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+60,600));
      rok2.add(new Node(pg[3].width/2-60,600));
      
      garisRok.add(new Node(pg[3].width/2-20,400));
      garisRok.add(new Node(pg[3].width/2-20,450));
      garisRok.add(new Node(pg[3].width/2+20,400));
      garisRok.add(new Node(pg[3].width/2+20,450));
      
      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)10.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+16*3, 250+(float) 1.1*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 0*3)); //B
      polaRok1.add(new Node(pg[2].width/20+24*3, 250+(float) 1.1*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 61.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)10.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+16*3+200, 250+(float) 1.1*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 0*3)); //B
      polaRok2.add(new Node(pg[2].width/20+24*3+200, 250+(float) 1.1*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)29.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 61.5*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); //A
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); //B
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 25.5*3)); //B1
      polaRok3.add(new Node(pg[2].width/20+10*3+400, 250+(float) 30.5*3));  //C
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 35.5*3));  //B11
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); //D
      polaRok3.add(new Node(pg[2].width/20+6*3+400, 250+(float) 64.5*3)); //E
      polaRok3.add(new Node(pg[2].width/20+4*3+400, 250+(float) 60.5*3));  //F
      polaRok3.add(new Node(pg[2].width/20+2*3+400, 250+(float) 64.5*3)); //G
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3)); //H
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 35.5*3)); //A1
      polaRok3.add(new Node(pg[2].width/20-2*3+400, 250+(float) 30.5*3)); //I
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 25.5*3)); //A11
      
     }    
     if(templateRok==5){ // Pola Rok Lipit Hadap II (Belum Saku)
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+60,600));
      rok2.add(new Node(pg[3].width/2-60,600));
      
      garisRok.add(new Node(pg[3].width/2-20,400));
      garisRok.add(new Node(pg[3].width/2-20,450));
      garisRok.add(new Node(pg[3].width/2+20,400));
      garisRok.add(new Node(pg[3].width/2+20,450));
      
      polaRok1.add(new Node(pg[2].width/20+1*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+7*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)8.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+10*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+14*3, 250+(float) 1.1*3)); //L4
      polaRok1.add(new Node(pg[2].width/20+(float)16.5*3, 250+(float) 2.5*3)); //L3
      polaRok1.add(new Node(pg[2].width/20+19*3, 250+(float) 1.1*3)); //B
      polaRok1.add(new Node(pg[2].width/20+(float)21.5*3, 250+(float) 2.5*3)); //L2
      polaRok1.add(new Node(pg[2].width/20+24*3, 250+(float) 1.1*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)29.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 61.5*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20-(float)1.5*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+1*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+7*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)8.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+10*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+14*3+200, 250+(float) 1.1*3)); //L4
      polaRok2.add(new Node(pg[2].width/20+(float)16.5*3+200, 250+(float) 2.5*3)); //L3
      polaRok2.add(new Node(pg[2].width/20+19*3+200, 250+(float) 1.1*3)); //B
      polaRok2.add(new Node(pg[2].width/20+(float)21.5*3+200, 250+(float) 2.5*3)); //L2
      polaRok2.add(new Node(pg[2].width/20+24*3+200, 250+(float) 1.1*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)29.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 61.5*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20-(float)1.5*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3));
    }
    if(templateRok==6){ //Rok Lipit Sungkup
      rok1.add(new Node(pg[3].width/2-40,380));
      rok1.add(new Node(pg[3].width/2+40,380));
      rok1.add(new Node(pg[3].width/2+40,400));
      rok1.add(new Node(pg[3].width/2-40,400));
      
      rok2.add(new Node(pg[3].width/2-40,400));
      rok2.add(new Node(pg[3].width/2+40,400));
      rok2.add(new Node(pg[3].width/2+45,450));
      rok2.add(new Node(pg[3].width/2+50,600));
      rok2.add(new Node(pg[3].width/2-50,600));
      rok2.add(new Node(pg[3].width/2-45,450));
      
      garisRok.add(new Node(pg[3].width/2-18,400));
      garisRok.add(new Node(pg[3].width/2-18,450));
      garisRok.add(new Node(pg[3].width/2+18,400));
      garisRok.add(new Node(pg[3].width/2+18,450));
      garisRok.add(new Node(pg[3].width/2-28,400));
      garisRok.add(new Node(pg[3].width/2-28,440));
      garisRok.add(new Node(pg[3].width/2+28,400));
      garisRok.add(new Node(pg[3].width/2+28,440));
      
      polaRok1.add(new Node(pg[2].width/20+3*3, 250+(float) 0*3)); //E'
      polaRok1.add(new Node(pg[2].width/20+6*3, 250+(float) 0.9*3)); //M"
      polaRok1.add(new Node(pg[2].width/20+(float)7.5*3, 250+(float) 13*3)); //K"
      polaRok1.add(new Node(pg[2].width/20+9*3, 250+(float) 0.9*3)); //L"
      polaRok1.add(new Node(pg[2].width/20+12*3, 250+(float) 0.9*3)); //M'
      polaRok1.add(new Node(pg[2].width/20+(float)13.5*3, 250+(float) 13*3)); //K'
      polaRok1.add(new Node(pg[2].width/20+15*3, 250+(float) 1.1*3)); //L'
      polaRok1.add(new Node(pg[2].width/20+18*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 13*3)); //B
      polaRok1.add(new Node(pg[2].width/20+22*3, 250+(float) 1.5*3)); //B
      polaRok1.add(new Node(pg[2].width/20+25*3, 250+(float) 1.1*3)); //L
      polaRok1.add(new Node(pg[2].width/20+(float)26.5*3, 250+(float) 13*3)); //K
      polaRok1.add(new Node(pg[2].width/20+28*3, 250+(float) 0.9*3)); //M
      polaRok1.add(new Node(pg[2].width/20+31*3, 250+(float) 0.9*3)); //L1
      polaRok1.add(new Node(pg[2].width/20+(float)32.5*3, 250+(float) 13*3)); //K1
      polaRok1.add(new Node(pg[2].width/20+33*3, 250+(float) 0.9*3)); //M1
      polaRok1.add(new Node(pg[2].width/20+37*3, 250+ (float) 0*3)); //E
      polaRok1.add(new Node(pg[2].width/20+40*3, 250+ (float) 17*3)); //F
      polaRok1.add(new Node(pg[2].width/20+45*3, 250+ (float) 60.5*3)); //H
      polaRok1.add(new Node(pg[2].width/20+20*3, 250+(float) 60*3)); //D
      polaRok1.add(new Node(pg[2].width/20-5*3, 250+ (float) 60.5*3)); //H'
      polaRok1.add(new Node(pg[2].width/20+0*3, 250+ (float) 17*3)); //F'
      
      polaRok2.add(new Node(pg[2].width/20+3*3+200, 250+(float) 0*3)); //E'
      polaRok2.add(new Node(pg[2].width/20+6*3+200, 250+(float) 0.9*3)); //M"
      polaRok2.add(new Node(pg[2].width/20+(float)7.5*3+200, 250+(float) 13*3)); //K"
      polaRok2.add(new Node(pg[2].width/20+9*3+200, 250+(float) 0.9*3)); //L"
      polaRok2.add(new Node(pg[2].width/20+12*3+200, 250+(float) 0.9*3)); //M'
      polaRok2.add(new Node(pg[2].width/20+(float)13.5*3+200, 250+(float) 13*3)); //K'
      polaRok2.add(new Node(pg[2].width/20+15*3+200, 250+(float) 1.1*3)); //L'
      polaRok2.add(new Node(pg[2].width/20+18*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 13*3)); //B
      polaRok2.add(new Node(pg[2].width/20+22*3+200, 250+(float) 1.5*3)); //B
      polaRok2.add(new Node(pg[2].width/20+25*3+200, 250+(float) 1.1*3)); //L
      polaRok2.add(new Node(pg[2].width/20+(float)26.5*3+200, 250+(float) 13*3)); //K
      polaRok2.add(new Node(pg[2].width/20+28*3+200, 250+(float) 0.9*3)); //M
      polaRok2.add(new Node(pg[2].width/20+31*3+200, 250+(float) 0.9*3)); //L1
      polaRok2.add(new Node(pg[2].width/20+(float)32.5*3+200, 250+(float) 13*3)); //K1
      polaRok2.add(new Node(pg[2].width/20+33*3+200, 250+(float) 0.9*3)); //M1
      polaRok2.add(new Node(pg[2].width/20+37*3+200, 250+ (float) 0*3)); //E
      polaRok2.add(new Node(pg[2].width/20+40*3+200, 250+ (float) 17*3)); //F
      polaRok2.add(new Node(pg[2].width/20+45*3+200, 250+ (float) 60.5*3)); //H
      polaRok2.add(new Node(pg[2].width/20+20*3+200, 250+(float) 60*3)); //D
      polaRok2.add(new Node(pg[2].width/20-5*3+200, 250+ (float) 60.5*3)); //H'
      polaRok2.add(new Node(pg[2].width/20+0*3+200, 250+ (float) 17*3)); //F'
      
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 1.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+8*3+400, 250+(float) 60.5*3)); 
      polaRok3.add(new Node(pg[2].width/20+0*3+400, 250+(float) 60.5*3));
    }
    if(templateRok==7){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateRok==8){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateRok==9){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateRok==10){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateRok==11){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateRok==12){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateRok==13){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateRok==14){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateRok==15){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateRok==16){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateRok==17){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateRok==18){
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateRok==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateRok==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
    //base1();
  }
}

public void selectAtasan(){
  if(templateAtasan>0){
    if(!newProject) {
      for(int i = atasan1.size()-1; i >= 0; i--)
        atasan1.remove(atasan1.get(i));
      for(int i = atasan2.size()-1; i >= 0; i--)
        atasan2.remove(atasan2.get(i));
      for(int i = atasan3.size()-1; i >= 0; i--)
        atasan3.remove(atasan3.get(i));
      for(int i = garisAtasan.size()-1; i >= 0; i--)
        garisAtasan.remove(garisAtasan.get(i));
      for(int i = garisAtasan2.size()-1; i >= 0; i--)
        garisAtasan2.remove(garisAtasan2.get(i));
      for(int i = polaAtasan1.size()-1; i >= 0; i--)
        polaAtasan1.remove(polaAtasan1.get(i));
      for(int i = polaAtasan2.size()-1; i >= 0; i--)
        polaAtasan2.remove(polaAtasan2.get(i));
      for(int i = polaAtasan3.size()-1; i >= 0; i--)
        polaAtasan3.remove(polaAtasan3.get(i));
      for(int i = polaAtasan4.size()-1; i >= 0; i--)
        polaAtasan4.remove(polaAtasan4.get(i));
      for(int i = polaAtasan5.size()-1; i >= 0; i--)
        polaAtasan5.remove(polaAtasan5.get(i));
    }
        
    newProject = true;
    if(templateAtasan==1){
      atasan1.add(new Node(pg[3].width/2-20,250));
      atasan1.add(new Node(pg[3].width/2-15,260));
      atasan1.add(new Node(pg[3].width/2,265));
      atasan1.add(new Node(pg[3].width/2+15,260));
      atasan1.add(new Node(pg[3].width/2+20,250));
      atasan1.add(new Node(pg[3].width/2+50,253));
      atasan1.add(new Node(pg[3].width/2+50,280));
      atasan1.add(new Node(pg[3].width/2+52,300));
      atasan1.add(new Node(pg[3].width/2+60,320));
      atasan1.add(new Node(pg[3].width/2+50,395));
      atasan1.add(new Node(pg[3].width/2-50,395));
      atasan1.add(new Node(pg[3].width/2-60,320));
      atasan1.add(new Node(pg[3].width/2-52,300));
      atasan1.add(new Node(pg[3].width/2-50,280));
      atasan1.add(new Node(pg[3].width/2-50,253));
      
      garisAtasan.add(new Node(pg[3].width/2-20,395));
      garisAtasan.add(new Node(pg[3].width/2-22,345));
      garisAtasan.add(new Node(pg[3].width/2+20,395));
      garisAtasan.add(new Node(pg[3].width/2+22,345));

      polaAtasan1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasan1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasan1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasan1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasan1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasan1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasan1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasan1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasan1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasan1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasan1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 40*3)); //Z
      polaAtasan1.add(new Node(pg[2].width/20+(float)11*3, 50+(float) 40*3)); // P
      polaAtasan1.add(new Node(pg[2].width/20+(float) 9*3, 50+(float) 30*3)); //N1
      polaAtasan1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 40*3)); //O
      polaAtasan1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 40*3)); // E
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      polaAtasan2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasan2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasan2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasan2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 39*3)); //M
      polaAtasan2.add(new Node(pg[2].width/20+(float)43*3+10, 50+ (float) 39*3)); //E
      polaAtasan2.add(new Node(pg[2].width/20+42*3+10, 50+ (float) 24*3)); //H
      polaAtasan2.add(new Node(pg[2].width/20+(float)40.5*3+10, 50+(float) 39*3)); // F
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 39*3)); //Y
      polaAtasan2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasan2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1

    }
    if(templateAtasan==2){
      atasan1.add(new Node(pg[3].width/2-20,250));
      atasan1.add(new Node(pg[3].width/2-15,260));
      atasan1.add(new Node(pg[3].width/2,265));
      atasan1.add(new Node(pg[3].width/2+15,260));
      atasan1.add(new Node(pg[3].width/2+20,250));
      atasan1.add(new Node(pg[3].width/2+50,253));
      atasan1.add(new Node(pg[3].width/2+50,280));
      atasan1.add(new Node(pg[3].width/2+52,300));
      atasan1.add(new Node(pg[3].width/2+60,320));
      atasan1.add(new Node(pg[3].width/2+50,395));
      atasan1.add(new Node(pg[3].width/2-50,395));
      atasan1.add(new Node(pg[3].width/2-60,320));
      atasan1.add(new Node(pg[3].width/2-52,300));
      atasan1.add(new Node(pg[3].width/2-50,280));
      atasan1.add(new Node(pg[3].width/2-50,253));
      
      atasan2.add(new Node(pg[3].width/2+50,253));
      atasan2.add(new Node(pg[3].width/2+80,310));
      atasan2.add(new Node(pg[3].width/2+65,315));
      atasan2.add(new Node(pg[3].width/2+60,320));
      atasan2.add(new Node(pg[3].width/2+52,300));
      atasan2.add(new Node(pg[3].width/2+50,280));
      
      atasan3.add(new Node(pg[3].width/2-50,253));
      atasan3.add(new Node(pg[3].width/2-80,310));
      atasan3.add(new Node(pg[3].width/2-65,315));
      atasan3.add(new Node(pg[3].width/2-60,320));
      atasan3.add(new Node(pg[3].width/2-52,300));
      atasan3.add(new Node(pg[3].width/2-50,280));
           
      garisAtasan.add(new Node(pg[3].width/2-20,395));
      garisAtasan.add(new Node(pg[3].width/2-22,345));
      garisAtasan.add(new Node(pg[3].width/2+20,395));
      garisAtasan.add(new Node(pg[3].width/2+22,345));

      polaAtasan1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasan1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasan1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasan1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasan1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasan1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasan1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasan1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasan1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasan1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasan1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 40*3)); //Z
      polaAtasan1.add(new Node(pg[2].width/20+(float)11*3, 50+(float) 40*3)); // P
      polaAtasan1.add(new Node(pg[2].width/20+(float) 9*3, 50+(float) 30*3)); //N1
      polaAtasan1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 40*3)); //O
      polaAtasan1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 40*3)); // E
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      polaAtasan2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasan2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasan2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasan2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 39*3)); //M
      polaAtasan2.add(new Node(pg[2].width/20+(float)43*3+10, 50+ (float) 39*3)); //E
      polaAtasan2.add(new Node(pg[2].width/20+42*3+10, 50+ (float) 24*3)); //H
      polaAtasan2.add(new Node(pg[2].width/20+(float)40.5*3+10, 50+(float) 39*3)); // F
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 39*3)); //Y
      polaAtasan2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasan2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
      
      polaAtasan3.add(new Node(pg[2].width/20+(float) 0*3+180, 50+(float) 0*3)); //A
      polaAtasan3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 0*3)); //C
      polaAtasan3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 0*3)); //E
      polaAtasan3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 16*3)); //F
      polaAtasan3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 20*3)); //E
      polaAtasan3.add(new Node(pg[2].width/20+(float) 10*3+180, 50+(float) 15*3)); //D
      polaAtasan3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 50+(float) 10*3)); //B
      polaAtasan3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 50+(float) 5*3)); //D1
    }
    if(templateAtasan==3){
      atasan1.add(new Node(pg[3].width/2-20,250));
      atasan1.add(new Node(pg[3].width/2-15,260));
      atasan1.add(new Node(pg[3].width/2,265));
      atasan1.add(new Node(pg[3].width/2+15,260));
      atasan1.add(new Node(pg[3].width/2+20,250));
      atasan1.add(new Node(pg[3].width/2+50,253));
      atasan1.add(new Node(pg[3].width/2+50,280));
      atasan1.add(new Node(pg[3].width/2+52,300));
      atasan1.add(new Node(pg[3].width/2+60,320));
      atasan1.add(new Node(pg[3].width/2+60,450));
      atasan1.add(new Node(pg[3].width/2-60,450));
      atasan1.add(new Node(pg[3].width/2-60,320));
      atasan1.add(new Node(pg[3].width/2-52,300));
      atasan1.add(new Node(pg[3].width/2-50,280));
      atasan1.add(new Node(pg[3].width/2-50,253));

      polaAtasan1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasan1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasan1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasan1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasan1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasan1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasan1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasan1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasan1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasan1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasan1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 60*3)); //Z
      //polaAtasan1.add(new Node(pg[2].width/20+(float)11*3, 50+(float) 40*5)); // P
      //polaAtasan1.add(new Node(pg[2].width/20+(float) 9*3, 50+(float) 30*5)); //N1
      //polaAtasan1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 40*5)); //O
      polaAtasan1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 60*3)); // E
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      polaAtasan2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasan2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasan2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasan2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 60*3)); //M
      //polaAtasan2.add(new Node(pg[2].width/20+(float)43*3+10, 50+ (float) 39*3)); //E
      //polaAtasan2.add(new Node(pg[2].width/20+42*3+10, 50+ (float) 24*3)); //H
      //polaAtasan2.add(new Node(pg[2].width/20+(float)40.5*3+10, 50+(float) 39*3)); // F
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 60*3)); //Y
      polaAtasan2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasan2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
    }
    if(templateAtasan==4){
      atasan1.add(new Node(pg[3].width/2-20,250));
      atasan1.add(new Node(pg[3].width/2-15,260));
      atasan1.add(new Node(pg[3].width/2,265));
      atasan1.add(new Node(pg[3].width/2+15,260));
      atasan1.add(new Node(pg[3].width/2+20,250));
      atasan1.add(new Node(pg[3].width/2+50,253));
      atasan1.add(new Node(pg[3].width/2+50,280));
      atasan1.add(new Node(pg[3].width/2+52,300));
      atasan1.add(new Node(pg[3].width/2+60,320));
      atasan1.add(new Node(pg[3].width/2+60,450));
      atasan1.add(new Node(pg[3].width/2-60,450));
      atasan1.add(new Node(pg[3].width/2-60,320));
      atasan1.add(new Node(pg[3].width/2-52,300));
      atasan1.add(new Node(pg[3].width/2-50,280));
      atasan1.add(new Node(pg[3].width/2-50,253));
      
      atasan2.add(new Node(pg[3].width/2+50,253));
      atasan2.add(new Node(pg[3].width/2+80,310));
      atasan2.add(new Node(pg[3].width/2+65,315));
      atasan2.add(new Node(pg[3].width/2+60,320));
      atasan2.add(new Node(pg[3].width/2+52,300));
      atasan2.add(new Node(pg[3].width/2+50,280));
      
      atasan3.add(new Node(pg[3].width/2-50,253));
      atasan3.add(new Node(pg[3].width/2-80,310));
      atasan3.add(new Node(pg[3].width/2-65,315));
      atasan3.add(new Node(pg[3].width/2-60,320));
      atasan3.add(new Node(pg[3].width/2-52,300));
      atasan3.add(new Node(pg[3].width/2-50,280));

      polaAtasan1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasan1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasan1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasan1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasan1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasan1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasan1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasan1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasan1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasan1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasan1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasan1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 60*3)); //Z
      //polaAtasan1.add(new Node(pg[2].width/20+(float)11*3, 50+(float) 40*3)); // P
      //polaAtasan1.add(new Node(pg[2].width/20+(float) 9*3, 50+(float) 30*3)); //N1
      //polaAtasan1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 40*3)); //O
      polaAtasan1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 60*3)); // E
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasan1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      polaAtasan2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasan2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasan2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasan2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasan2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasan2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 60*3)); //M
      //polaAtasan2.add(new Node(pg[2].width/20+(float)43*3+10, 50+ (float) 39*3)); //E
      //polaAtasan2.add(new Node(pg[2].width/20+42*3+10, 50+ (float) 24*3)); //H
      //polaAtasan2.add(new Node(pg[2].width/20+(float)40.5*3+10, 50+(float) 39*3)); // F
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 60*3)); //Y
      polaAtasan2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasan2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasan2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasan2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
      
      polaAtasan3.add(new Node(pg[2].width/20+(float) 0*3+180, 50+(float) 0*3)); //A
      polaAtasan3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 0*3)); //C
      polaAtasan3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 0*3)); //E
      polaAtasan3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 16*3)); //F
      polaAtasan3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 20*3)); //E
      polaAtasan3.add(new Node(pg[2].width/20+(float) 10*3+180, 50+(float) 15*3)); //D
      polaAtasan3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 50+(float) 10*3)); //B
      polaAtasan3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 50+(float) 5*3)); //D1
    }
    if(templateAtasan==5){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+75));
      
      
    }
    if(templateAtasan==6){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+75));
    }
    if(templateAtasan==7){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateAtasan==8){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateAtasan==9){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateAtasan==10){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasan==11){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasan==12){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasan==13){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasan==14){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasan==15){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasan==16){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateAtasan==17){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateAtasan==18){
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateAtasan==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasan==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
    //base1();
  }
}

public void selectCelana(){
    if(templateCelana>0){
    if(!newProject) {
      for(int i = celana1.size()-1; i >= 0; i--)
        celana1.remove(celana1.get(i));
      for(int i = celana2.size()-1; i >= 0; i--)
        celana2.remove(celana2.get(i));
      for(int i = celana3.size()-1; i >= 0; i--)
        celana3.remove(celana3.get(i));  
      for(int i = garisCelana.size()-1; i >= 0; i--)
        garisCelana.remove(garisCelana.get(i));
      for(int i = garisCelana2.size()-1; i >= 0; i--)
        garisCelana2.remove(garisCelana2.get(i));
      for(int i = polaCelana1.size()-1; i >= 0; i--)
        polaCelana1.remove(polaCelana1.get(i));
      for(int i = polaCelana2.size()-1; i >= 0; i--)
        polaCelana2.remove(polaCelana2.get(i));
      for(int i = polaCelana3.size()-1; i >= 0; i--)
        polaCelana3.remove(polaCelana3.get(i));
      for(int i = polaCelana4.size()-1; i >= 0; i--)
        polaCelana4.remove(polaCelana4.get(i));
      for(int i = polaCelana5.size()-1; i >= 0; i--)
        polaCelana5.remove(polaCelana5.get(i));
    }
        
    newProject = true;
    if(templateCelana==1){
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
    }
    if(templateCelana==2){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
    }
    if(templateCelana==3){
      nodes.add(new Node(pg[2].width/3-30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width*2/3+30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width/2,pg[2].height/3));
    }
    if(templateCelana==4){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-50,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+50,pg[2].height/2+100));
    }
    if(templateCelana==5){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+100));
    }
    if(templateCelana==6){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+75));
    }
    if(templateCelana==7){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateCelana==8){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateCelana==9){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateCelana==10){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelana==11){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelana==12){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelana==13){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelana==14){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelana==15){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelana==16){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateCelana==17){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateCelana==18){
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateCelana==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelana==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
  }
}


public void selectGaun(){
    if(templateGaun>0){
    if(!newProject) {
      for(int i = gaun1.size()-1; i >= 0; i--)
        gaun1.remove(gaun1.get(i));
      for(int i = gaun2.size()-1; i >= 0; i--)
        gaun2.remove(gaun2.get(i));
      for(int i = gaun3.size()-1; i >= 0; i--)
        gaun3.remove(gaun3.get(i));  
      for(int i = garisGaun.size()-1; i >= 0; i--)
        garisGaun.remove(garisGaun.get(i));
      for(int i = garisGaun2.size()-1; i >= 0; i--)
        garisGaun2.remove(garisGaun2.get(i));
      for(int i = polaGaun1.size()-1; i >= 0; i--)
        polaGaun1.remove(polaGaun1.get(i));
      for(int i = polaGaun2.size()-1; i >= 0; i--)
        polaGaun2.remove(polaGaun2.get(i));
      for(int i = polaGaun3.size()-1; i >= 0; i--)
        polaGaun3.remove(polaGaun3.get(i));
      for(int i = polaGaun4.size()-1; i >= 0; i--)
        polaGaun4.remove(polaGaun4.get(i));
    }
        
    newProject = true;
    if(templateGaun==1){
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
    }
    if(templateGaun==2){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
    }
    if(templateGaun==3){
      nodes.add(new Node(pg[2].width/3-30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width*2/3+30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width/2,pg[2].height/3));
    }
    if(templateGaun==4){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-50,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+50,pg[2].height/2+100));
    }
    if(templateGaun==5){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+100));
    }
    if(templateGaun==6){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+75));
    }
    if(templateGaun==7){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateGaun==8){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateGaun==9){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateGaun==10){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateGaun==11){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateGaun==12){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateGaun==13){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateGaun==14){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateGaun==15){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateGaun==16){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateGaun==17){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateGaun==18){
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateGaun==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateGaun==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
  }
}

public void selectAtasanlk(){
  if(templateAtasanlk>0){
    if(!newProject) {
      for(int i = atasanlk1.size()-1; i >= 0; i--)
        atasanlk1.remove(atasanlk1.get(i));
      for(int i = atasanlk2.size()-1; i >= 0; i--)
        atasanlk2.remove(atasanlk2.get(i));
      for(int i = atasanlk3.size()-1; i >= 0; i--)
        atasanlk3.remove(atasanlk3.get(i));
      for(int i = garisAtasanlk.size()-1; i >= 0; i--)
        garisAtasanlk.remove(garisAtasanlk.get(i));
      for(int i = garisAtasanlk2.size()-1; i >= 0; i--)
        garisAtasanlk2.remove(garisAtasanlk2.get(i));
      for(int i = polaAtasanlk1.size()-1; i >= 0; i--)
        polaAtasanlk1.remove(polaAtasanlk1.get(i));
      for(int i = polaAtasanlk2.size()-1; i >= 0; i--)
        polaAtasanlk2.remove(polaAtasanlk2.get(i));
      for(int i = polaAtasanlk3.size()-1; i >= 0; i--)
        polaAtasanlk3.remove(polaAtasanlk3.get(i));
      for(int i = polaAtasanlk4.size()-1; i >= 0; i--)
        polaAtasanlk4.remove(polaAtasanlk4.get(i));
      for(int i = polaAtasanlk5.size()-1; i >= 0; i--)
        polaAtasanlk5.remove(polaAtasanlk5.get(i));
    }
        
    newProject = true;
    if(templateAtasanlk==1){ //baju lengan pendek
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      atasanlk2.add(new Node(pg[3].width/2+50,253));
      atasanlk2.add(new Node(pg[3].width/2+80,310));
      atasanlk2.add(new Node(pg[3].width/2+65,315));
      atasanlk2.add(new Node(pg[3].width/2+60,320));
      atasanlk2.add(new Node(pg[3].width/2+52,300));
      atasanlk2.add(new Node(pg[3].width/2+50,280));
      
      atasanlk3.add(new Node(pg[3].width/2-50,253));
      atasanlk3.add(new Node(pg[3].width/2-80,310));
      atasanlk3.add(new Node(pg[3].width/2-65,315));
      atasanlk3.add(new Node(pg[3].width/2-60,320));
      atasanlk3.add(new Node(pg[3].width/2-52,300));
      atasanlk3.add(new Node(pg[3].width/2-50,280));
      
      //badan depan
      polaAtasanlk1.add(new Node(pg[2].width/20+0*3+50, 50+(float) 4*3)); //h'
      polaAtasanlk1.add(new Node(pg[2].width/20+12*3+50, 50+(float) 0*3)); //g'
      polaAtasanlk1.add(new Node(pg[2].width/20+13*3+50, 50+(float) 3*3)); //d1'
      polaAtasanlk1.add(new Node(pg[2].width/20+14*3+50, 50+(float) 5.5*3)); //d2'
      polaAtasanlk1.add(new Node(pg[2].width/20+18*3, 50+(float) 8*3)); //d
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)19*3, 50+(float) 3*3)); //d1
      polaAtasanlk1.add(new Node(pg[2].width/20+20*3+50, 50+(float) 5.5*3)); //d2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 25*3, 50+ (float) 0*3)); //g
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)36*3, 50+ (float) 4*3)); //h
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)20.5*3, 50+ (float) 15.5*3)); //c
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 25*3, 50+ (float) 17*3)); //q
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 30*3, 50+ (float) 15.5*3)); //n2
      polaAtasanlk1.add(new Node(pg[2].width/20+37.5*3, 50+ (float) 18.5*3)); //r
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)48*3, 50+(float) 20*3)); // t
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 38*3, 50+(float) 40*3)); //z
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 40*3)); //e
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 3.5*3, 50+(float) 40*3)); //z'
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 20*3)); //t'
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 4.5*3, 50+(float) 18.5*3)); //r'
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 15.5*3)); //n2'
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 5*3, 50+(float) 17*3)); //q'
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 15.5*3)); //c'
      

      //polaAtasanlk1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      //polaAtasanlk1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      //polaAtasanlk1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 60*3)); //Z
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 60*3)); // E
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 60*3)); //M
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 60*3)); //Y
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
      
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+180, 50+(float) 0*3)); //A
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 0*3)); //C
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 0*3)); //E
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 16*3)); //F
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 20*3)); //E
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+180, 50+(float) 15*3)); //D
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 50+(float) 10*3)); //B
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 50+(float) 5*3)); //D1

    }
    if(templateAtasanlk==2){ //baju lengan panjang
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      

      //pola badan depan
      polaAtasanlk1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 60*3)); //Z
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
     //pola badan belakang
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 60*3)); //M
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 60*3)); //Y
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
      
      //pola lengan panjang
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+180, 100+(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 100+(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 45*3+180, 100+(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 45*3+180, 100+(float) 11*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 100+(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+180, 100+(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 100+(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 100+(float) 5*3)); //D1
      
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+180, 100-(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 100-(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 45*3+180, 100-(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 45*3+180, 100-(float) 11*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 100-(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+180, 100-(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 100-(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 100-(float) 5*3)); //D1
      
    }
    if(templateAtasanlk==3){ //baju lengan pendek kerah kemeja bukaan depan
     //badan visualisasi
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      //atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      //lengan kanan visualisasi
      atasanlk2.add(new Node(pg[3].width/2+50,253));
      atasanlk2.add(new Node(pg[3].width/2+80,310));
      atasanlk2.add(new Node(pg[3].width/2+65,315));
      atasanlk2.add(new Node(pg[3].width/2+60,320));
      atasanlk2.add(new Node(pg[3].width/2+52,300));
      atasanlk2.add(new Node(pg[3].width/2+50,280));
      
      //lengan kiri visualisasi
      atasanlk3.add(new Node(pg[3].width/2-50,253));
      atasanlk3.add(new Node(pg[3].width/2-80,310));
      atasanlk3.add(new Node(pg[3].width/2-65,315));
      atasanlk3.add(new Node(pg[3].width/2-60,320));
      atasanlk3.add(new Node(pg[3].width/2-52,300));
      atasanlk3.add(new Node(pg[3].width/2-50,280));
      
      //leher visualisasi
      
      garisAtasanlk.add(new Node(pg[3].width/2-20,250));
      garisAtasanlk.add(new Node(pg[3].width/2-35,265));
      garisAtasanlk.add(new Node(pg[3].width/2-35,265));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      garisAtasanlk.add(new Node(pg[3].width/2-20,250));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      
      garisAtasanlk.add(new Node(pg[3].width/2+20,250));
      garisAtasanlk.add(new Node(pg[3].width/2+35,265));
      garisAtasanlk.add(new Node(pg[3].width/2+35,265));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      garisAtasanlk.add(new Node(pg[3].width/2+20,250));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
    
      
      //badan depan
      polaAtasanlk1.add(new Node(pg[2].width/20+0*3+50, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20+3*3+50, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)5.5*3+50, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 6.5*3+50, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 18.5*3+50, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)16.5*3+50, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)15.5*3+50, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 16.5*3+50, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)17.5*3+50, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20+13*3+50, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)18.5*3+50, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 24.5*3+50, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3+50, 50+(float) 60*3)); //Z
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)0*3+50, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 15.5*3)); //B
      
      polaAtasanlk1.add(new Node(pg[2].width/20-0*3+50, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20-3*3+50, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)5.5*3+50, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 6.5*3+50, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 18.5*3+50, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)16.5*3+50, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)15.5*3+50, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 16.5*3+50, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)17.5*3+50, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20-13*3+50, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)18.5*3+50, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 24.5*3+50, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 21*3+50, 50+(float) 60*3)); //Z
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)0*3+50, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 15.5*3)); //B
      
      //badan belakang
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30.5*3+100, 100+(float) 3.5*3)); //Q
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)43.5*3+100, 100+(float) 0*3)); //N
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)45*3+100, 100+(float) 1*3)); //N1
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 48*3+100, 100+(float) 1.5*3)); //N2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+100, 100+ (float) 2*3)); //K
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+100, 100+ (float) 12*3)); //C
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+100, 100+ (float) 22*3)); //B
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+100, 100+ (float) 60*3)); //M
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+100, 100+(float) 60*3)); //Y
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 28*3+100, 100+(float) 22*3)); //T
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30*3+100, 100+(float) 20*3)); // D2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 32*3+100, 100+(float) 12*3)); //D
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+100, 100+(float) 8*3)); //D1
     
      
      
      //pola lengan
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+350, 100+(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100+(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100+(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100+(float) 16*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100+(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+350, 100+(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+350, 100+(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+350, 100+(float) 5*3)); //D1
      
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+350, 100-(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100-(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100-(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100-(float) 16*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100-(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+350, 100-(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+350, 100-(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+350, 100-(float) 5*3)); //D1
      
      //pola kerah kemeja
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) -3*3+250, 300+(float) 0*3)); //f'
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 0*3+250, 300+(float) 0*3)); //a'
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 18*3+250, 300+(float) 0*3)); //a
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 36*3+250, 300+(float) 0*3)); //c
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 39*3+250, 300+(float) 0*3)); //F
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 36*3+250, 300+(float) 6*3));// e
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 18*3+250, 300+(float) 5*3)); //b
      polaAtasanlk4.add(new Node(pg[2].width/20+(float) 0*3+250, 300 + (float)6*3)); //e'
      
     
      
    }
    if(templateAtasanlk==4){ //baju lengan panjang kerah kemeja bukaan depan
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      atasanlk2.add(new Node(pg[3].width/2+50,253));
      atasanlk2.add(new Node(pg[3].width/2+80,310));
      atasanlk2.add(new Node(pg[3].width/2+65,315));
      atasanlk2.add(new Node(pg[3].width/2+60,320));
      atasanlk2.add(new Node(pg[3].width/2+52,300));
      atasanlk2.add(new Node(pg[3].width/2+50,280));
      
      atasanlk3.add(new Node(pg[3].width/2-50,253));
      atasanlk3.add(new Node(pg[3].width/2-80,310));
      atasanlk3.add(new Node(pg[3].width/2-65,315));
      atasanlk3.add(new Node(pg[3].width/2-60,320));
      atasanlk3.add(new Node(pg[3].width/2-52,300));
      atasanlk3.add(new Node(pg[3].width/2-50,280));

      polaAtasanlk1.add(new Node(pg[2].width/20+0*3, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20+3*3, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)5.5*3, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 6.5*3, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 18.5*3, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)16.5*3, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)15.5*3, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 16.5*3, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)17.5*3, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20+13*3, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)18.5*3, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 24.5*3, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3, 50+(float) 60*3)); //Z
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float)11*3, 50+(float) 40*3)); // P
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 9*3, 50+(float) 30*3)); //N1
      //polaAtasanlk1.add(new Node(pg[2].width/20+(float) 8*3, 50+(float) 40*3)); //O
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)0*3, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3, 50+(float) 15.5*3)); //B
     
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30.5*3+10, 50+(float) 3.5*3)); //Q
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)43.5*3+10, 50+(float) 0*3)); //N
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)45*3+10, 50+(float) 1*3)); //N1
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 48*3+10, 50+(float) 1.5*3)); //N2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 2*3)); //K
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 12*3)); //C
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+10, 50+ (float) 22*3)); //B
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+10, 50+ (float) 60*3)); //M
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)43*3+10, 50+ (float) 39*3)); //E
      //polaAtasanlk2.add(new Node(pg[2].width/20+42*3+10, 50+ (float) 24*3)); //H
      //polaAtasanlk2.add(new Node(pg[2].width/20+(float)40.5*3+10, 50+(float) 39*3)); // F
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 60*3)); //Y
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 28*3+10, 50+(float) 22*3)); //T
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30*3+10, 50+(float) 20*3)); // D2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 32*3+10, 50+(float) 12*3)); //D
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+10, 50+(float) 8*3)); //D1
      
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+180, 50+(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 16*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+180, 50+(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+180, 50+(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+180, 50+(float) 5*3)); //D1
    }
    if(templateAtasanlk==5){ //baju lengan pendek kerah kemeja setengah bukaan
      //badan visualisasi
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      //atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      //lengan kanan visualisasi
      atasanlk2.add(new Node(pg[3].width/2+50,253));
      atasanlk2.add(new Node(pg[3].width/2+80,310));
      atasanlk2.add(new Node(pg[3].width/2+65,315));
      atasanlk2.add(new Node(pg[3].width/2+60,320));
      atasanlk2.add(new Node(pg[3].width/2+52,300));
      atasanlk2.add(new Node(pg[3].width/2+50,280));
      
      //lengan kiri visualisasi
      atasanlk3.add(new Node(pg[3].width/2-50,253));
      atasanlk3.add(new Node(pg[3].width/2-80,310));
      atasanlk3.add(new Node(pg[3].width/2-65,315));
      atasanlk3.add(new Node(pg[3].width/2-60,320));
      atasanlk3.add(new Node(pg[3].width/2-52,300));
      atasanlk3.add(new Node(pg[3].width/2-50,280));
      
      //leher visualisasi
      
      garisAtasanlk.add(new Node(pg[3].width/2-20,250));
      garisAtasanlk.add(new Node(pg[3].width/2-35,265));
      garisAtasanlk.add(new Node(pg[3].width/2-35,265));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      garisAtasanlk.add(new Node(pg[3].width/2-20,250));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      
      garisAtasanlk.add(new Node(pg[3].width/2+20,250));
      garisAtasanlk.add(new Node(pg[3].width/2+35,265));
      garisAtasanlk.add(new Node(pg[3].width/2+35,265));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
      garisAtasanlk.add(new Node(pg[3].width/2+20,250));
      garisAtasanlk.add(new Node(pg[3].width/2,280));
    
      
      //badan depan
      polaAtasanlk1.add(new Node(pg[2].width/20+0*3+50, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20+3*3+50, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)5.5*3+50, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 6.5*3+50, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 18.5*3+50, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)16.5*3+50, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)15.5*3+50, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 16.5*3+50, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)17.5*3+50, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20+13*3+50, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)18.5*3+50, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 24.5*3+50, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 21*3+50, 50+(float) 60*3)); //Z
      polaAtasanlk1.add(new Node(pg[2].width/20+(float)0*3+50, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20+(float) 0*3+50, 50+(float) 15.5*3)); //B
      
      polaAtasanlk1.add(new Node(pg[2].width/20-0*3+50, 50+(float) 8*3)); //D
      polaAtasanlk1.add(new Node(pg[2].width/20-3*3+50, 50+(float) 6.5*3)); //D1
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)5.5*3+50, 50+(float) 3*3)); //D2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 6.5*3+50, 50+(float) 0*3)); //G
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 18.5*3+50, 50+ (float) 3.5*3)); //H
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)16.5*3+50, 50+ (float) 7.5*3)); //H1
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)15.5*3+50, 50+ (float) 11.5*3)); //H2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 16.5*3+50, 50+ (float) 15.5*3)); //C
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)17.5*3+50, 50+ (float) 17.5*3)); //Q
      polaAtasanlk1.add(new Node(pg[2].width/20-13*3+50, 50+ (float) 25*3)); //N2
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)18.5*3+50, 50+(float) 18*3)); // R
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 24.5*3+50, 50+(float) 23*3)); //T
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 21*3+50, 50+(float) 60*3)); //Z
      polaAtasanlk1.add(new Node(pg[2].width/20-(float)0*3+50, 50+(float) 60*3)); // E
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 27*3)); //L
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 23*3)); //A
      polaAtasanlk1.add(new Node(pg[2].width/20-(float) 0*3+50, 50+(float) 15.5*3)); //B
      
      //badan belakang
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30.5*3+100, 100+(float) 3.5*3)); //Q
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)43.5*3+100, 100+(float) 0*3)); //N
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)45*3+100, 100+(float) 1*3)); //N1
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 48*3+100, 100+(float) 1.5*3)); //N2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+100, 100+ (float) 2*3)); //K
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+100, 100+ (float) 12*3)); //C
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)50*3+100, 100+ (float) 22*3)); //B
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 50*3+100, 100+ (float) 60*3)); //M
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+100, 100+(float) 60*3)); //Y
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 28*3+100, 100+(float) 22*3)); //T
      polaAtasanlk2.add(new Node(pg[2].width/20+(float)30*3+100, 100+(float) 20*3)); // D2
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 32*3+100, 100+(float) 12*3)); //D
      polaAtasanlk2.add(new Node(pg[2].width/20+(float) 31.5*3+100, 100+(float) 8*3)); //D1
     
      
      
      //lengan
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+350, 100+(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100+(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100+(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100+(float) 16*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100+(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+350, 100+(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+350, 100+(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+350, 100+(float) 5*3)); //D1
      
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+350, 100-(float) 0*3)); //A
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100-(float) 0*3)); //C
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100-(float) 0*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+350, 100-(float) 16*3)); //F
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+350, 100-(float) 20*3)); //E
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 10*3+350, 100-(float) 15*3)); //D
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 6.5*3+350, 100-(float) 10*3)); //B
      polaAtasanlk3.add(new Node(pg[2].width/20+(float) 2.5*3+350, 100-(float) 5*3)); //D1
      
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 0*3+180, 50+(float) 0*3)); //A >> A+C+E = garis lurus
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 12.5*3+180, 50+(float) 0*3)); //C
      //polaAtasanlk3.add(new Node(pg[2].width/20+(float) 23*3+180, 50+(float) 0*3)); //E
      
     
     
    }
    if(templateAtasanlk==6){ //baju lengan panjang kerah kemeja setengah bukaan 
      //badan visualisasi
      atasanlk1.add(new Node(pg[3].width/2-20,250));
      atasanlk1.add(new Node(pg[3].width/2-15,260));
      atasanlk1.add(new Node(pg[3].width/2,265));
      atasanlk1.add(new Node(pg[3].width/2+15,260));
      atasanlk1.add(new Node(pg[3].width/2+20,250));
      atasanlk1.add(new Node(pg[3].width/2+50,253));
      atasanlk1.add(new Node(pg[3].width/2+50,280));
      atasanlk1.add(new Node(pg[3].width/2+52,300));
      atasanlk1.add(new Node(pg[3].width/2+60,320));
      atasanlk1.add(new Node(pg[3].width/2+60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,450));
      atasanlk1.add(new Node(pg[3].width/2-60,320));
      atasanlk1.add(new Node(pg[3].width/2-52,300));
      atasanlk1.add(new Node(pg[3].width/2-50,280));
      atasanlk1.add(new Node(pg[3].width/2-50,253));
      
      
    
    }
    if(templateAtasanlk==7){ //baju lengan pendek kerah tegak bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateAtasanlk==8){ //baju lengan panjang kerah tegak bukaan depan
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateAtasanlk==9){ //baju lengan pendek kerah tegak setengah bukaan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateAtasanlk==10){ //baju lengan panjang kerah tegak setengah bukaan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasanlk==11){ //baju lengan pendek kerah sport bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasanlk==12){ //baju lengan panjang kerah sport bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasanlk==13){ //baju lengan pendek kerah shiller bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasanlk==14){ //baju lengan panjang kerah shiller bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasanlk==15){ //baju lengan pendek kerah kemeja boord tersusun bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateAtasanlk==16){ //baju lengan panjang kerah kemeja boord tersusun bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateAtasanlk==17){ //baju lengan pendek kerah rever bukaan depan
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateAtasanlk==18){ //baju lengan panjang kerah rever bukaan depan
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateAtasanlk==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateAtasanlk==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
    //base1();
  }
}

public void selectCelanalk(){
    if(templateCelanalk>0){
    if(!newProject) {
      for(int i = celanalk1.size()-1; i >= 0; i--)
        celanalk1.remove(celanalk1.get(i));
      for(int i = celanalk2.size()-1; i >= 0; i--)
        celanalk2.remove(celanalk2.get(i));
      for(int i = celanalk3.size()-1; i >= 0; i--)
        celanalk3.remove(celanalk3.get(i));  
      for(int i = garisCelanalk.size()-1; i >= 0; i--)
        garisCelanalk.remove(garisCelanalk.get(i));
      for(int i = garisCelanalk2.size()-1; i >= 0; i--)
        garisCelanalk2.remove(garisCelanalk2.get(i));
      for(int i = polaCelanalk1.size()-1; i >= 0; i--)
        polaCelanalk1.remove(polaCelanalk1.get(i));
      for(int i = polaCelanalk2.size()-1; i >= 0; i--)
        polaCelanalk2.remove(polaCelanalk2.get(i));
      for(int i = polaCelanalk3.size()-1; i >= 0; i--)
        polaCelanalk3.remove(polaCelanalk3.get(i));
      for(int i = polaCelanalk4.size()-1; i >= 0; i--)
        polaCelanalk4.remove(polaCelanalk4.get(i));
      for(int i = polaCelanalk5.size()-1; i >= 0; i--)
        polaCelanalk5.remove(polaCelanalk5.get(i));
    }
        
    newProject = true;
    if(templateCelanalk==1){
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      //nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
      //nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
    }
    if(templateCelanalk==2){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2-100));
    }
    if(templateCelanalk==3){
      nodes.add(new Node(pg[2].width/3-30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width*2/3+30,pg[2].height*2/3));
      nodes.add(new Node(pg[2].width/2,pg[2].height/3));
    }
    if(templateCelanalk==4){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-50,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+50,pg[2].height/2+100));
    }
    if(templateCelanalk==5){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+100));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-100));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+100));
    }
    if(templateCelanalk==6){
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+75));
    }
    if(templateCelanalk==7){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
    }
    if(templateCelanalk==8){
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2+75));
    }
    if(templateCelanalk==9){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2+75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-75,pg[2].height/2+150));
    }
    if(templateCelanalk==10){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelanalk==11){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelanalk==12){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelanalk==13){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelanalk==14){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelanalk==15){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
    }
    if(templateCelanalk==16){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateCelanalk==17){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+100,pg[2].height/2));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2,pg[2].height/2+75));
    }
    if(templateCelanalk==18){
      nodes.add(new Node(pg[2].width/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3-75,pg[2].height/2));
    }
    if(templateCelanalk==19){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75));
    }
    if(templateCelanalk==20){
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width/2-150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2-150));
      nodes.add(new Node(pg[2].width/2+150,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+75));
      nodes.add(new Node(pg[2].width*2/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+150));
      nodes.add(new Node(pg[2].width/3,pg[2].height/2+75)); 
    }
    newProject = false; 
    base();
  }
}


public void mouseMoved() {
  for(int i=0; i<menuList.length; i++)
    if(menuList[i].menuOpen)
      menuList[i].selectedLineFromMouse();
}

public void mousePressed(){
  int menuResult = -1;  
  for(int i=0; i<menuList.length; i++){
    menuResult = menuList[i].clicked();
    if(menuResult!=-1){
      evalMenu(menuResult);
      return;
    }
  }
  
  if(mouseY<25 && mouseX>width-40)
    exit();
    
  if(pg2D){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=img2d.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>img2d.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          template2d = c2d;
        //  select2DTemplate();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  else if(pgRok){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgRok.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgRok.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          rok = true;
          templateRok = c2d;
          selectRok();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  else if(pgAtasan){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgAtasan.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgAtasan.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          atasan = true;
          templateAtasan = c2d;
          selectAtasan();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
   else if(pgGaun){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgGaun.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgGaun.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          gaun = true;
          templateGaun = c2d;
          selectGaun();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  
   else if(pgCelana){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgCelana.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgCelana.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          celana = true;
          templateCelana = c2d;
          selectCelana();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  
   else if(pgAtasanLk){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgAtasanLk.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgAtasanLk.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          atasanlk = true;
          templateAtasanlk = c2d;
          selectAtasanlk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  
  else if(pgCelanaLk){
    int c2d=1;
    for(int i=1; i<=9; i++){
      if(c2d>=imgCelanaLk.length-1){
        c2d=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c2d>imgCelanaLk.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          celanalk = true;
          templateCelanalk = c2d;
          selectCelanalk();          
          newProject = false;
          break;
        }
        c2d++;
      }
    }
  }
  
  else if(pgTex1){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex1.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex1.length-1)
          break;
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex1[c];
          urlTexture = urlTex1[c];
          //selectedTex = c;
          //if(floors.size()>=1)
          //  for(int k=floors.size()-1; k>=0; k--)
          //    if(floors.get(k).isSelected){
          //      floors.get(k).imageTexture = loadImage(urlTex1[c]);
          //      floors.get(k).urlTexture = urlTex1[c];
          //      break;
          //    }
          //break;
        }
        c++;
      }
    }
  }
  else if(pgTex2){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex2.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex2.length-1){
          break;
        }
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex2[c];
          urlTexture = urlTex2[c];
          //selectedTex = c;
          //if(floors.size()>=1)
          //  for(int k=floors.size()-1; k>=0; k--)
          //    if(floors.get(k).isSelected){
          //      floors.get(k).imageTexture = loadImage(urlTex2[c]);
          //      floors.get(k).urlTexture = urlTex2[c];
          //      break;
          //    }
          //break;
        }
        c++;
      }
    }
  }
  else if(pgTex3){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex3.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex3.length-1){
          break;
        }
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex3[c];
          urlTexture = urlTex3[c];
        }
        c++;
      }
    }
  }
  else if(pgTex4){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex4.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex4.length-1){
          break;
        }
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex4[c];
          urlTexture = urlTex4[c];
        }
        c++;
      }
    }
  }
  else if(pgTex5){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex5.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex5.length-1){
          break;
        }
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex5[c];
          urlTexture = urlTex5[c];
        }
        c++;
      }
    }
  }
  
   else if(pgTex6){
    int c=1;
    for(int i=1; i<=9; i++){
      if(c>=imgtex6.length-1){
        c=1;
        break;
      }
      for(int j=1; j<=6; j++){
        if(c>imgtex6.length-1){
          break;
        }
        if(mouseX>pg[4].width-(j*75)+10+(2*width/3) && mouseX<pg[4].width-(j*75-50)+10+(2*width/3)
        && mouseY-25<i*75+50 && mouseY-25>i*75){
          citraKain = true;
          imageTexture = imgtex6[c];
          urlTexture = urlTex6[c];
        }
        c++;
      }
    }
  }
  
  if(mouseX>0 && mouseX<width/3 && mouseY>pg[1].height && mouseY<pg[2].height+pg[1].height)
    if(nodes.size()>=1)
      for(int j = nodes.size()-1; j >= 0; j--){
        float disX = nodes.get(j).x - mouseX;
        float disY = nodes.get(j).z - mouseY;
        if (sqrt(sq(disX) + sq(disY))<20){
          if(mouseButton == LEFT)
            geserNode=j;
          else if(mouseButton == RIGHT)
            nodes.remove(nodes.get(j));
          break;
        }
        if(j==0 && sqrt(sq(disX) + sq(disY))>20 && mouseButton == LEFT){
          geserNode=-1;
          nodes.add(new Node(mouseX, mouseY));
        }
      }
    else if(nodes.size()<=1 && mouseButton == LEFT){
      nodes.add(new Node(mouseX, mouseY));
      newProject=false;
    }
}


public void mouseReleased(){
  geserNode = -1;
}

public void keyPressed(){
  if(key == CODED){
    if(keyCode == CONTROL) 
      controlDown = true;
    if(keyCode == SHIFT)
      shiftDown = true;
    if(keyCode == DOWN)
      for(int j=floors.size()-1; j>0; j--){
        if(floors.get(j).isSelected){
          floors.get(j).isSelected=false;
          floors.get(j-1).isSelected=true;
          break;
        }
      }
    else if(keyCode == UP)
      for(int j=0; j<floors.size()-1; j++)
        if(floors.get(j).isSelected){
          floors.get(j).isSelected=false;
          floors.get(j+1).isSelected=true;
          break;
        }
    return;
  }
  
  //if(floors.size()>0){
  //  if(key=='u' || key=='U')
  //    insertTopFloor();
  //  else if(key=='i' || key=='I')
  //    insertBottomFloor();
  //}
  //if(floors.size()>1)
  //  if(key=='k' || key=='K')
  //    removeFloor();
      
  //if(key=='G')      showGrid3D();
  if(key=='c' || key=='C')      showCenter();
  if(key=='g')      showGrid();
  //if(key=='z' || key=='Z')      TranslateZ();
  //if(key=='y' || key=='Y')      TranslateY();
  //if(key=='p' || key=='P')      RotateY();
  //if(key=='x' || key=='X')      TranslateX();
  //if(keyCode=='H' || key=='H')  setHighFloor();
  //if(keyCode=='R' || key=='R')  setScale();
  //if(keyCode==ENTER)            convertTo3D();
  if(key=='s' || key=='S')      saveProject();
  if(key=='n' || key=='N')      newProject();
  if(key=='o' || key=='O')      openProject();
  if(key=='q' || key=='Q')      exit();
  if(key=='w' || key=='W')      pg[3].save("/SS/SS3D.jpg");
  if(key=='v' || key=='V')      pg[2].save("/SS/SS2D.jpg");
}

public void keyReleased(){
  if (key == CODED) {
    if (keyCode == CONTROL)
      controlDown = false;
    if (keyCode == SHIFT)
      shiftDown = false;
  }
}

public void evalMenu(int menuResult1){
  switch(menuResult1){
  case 0: 
    print("\nNew Project");
    newProject();
    break; 
  case 1:
    print("\nOpen");
    openProject();
    base();
   // convertTo3D();
    break; 
  case 2:
    print("\nSave");
    saveProject();
    break;
  case 3:
    print("\nTutorial");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgRok = false;
    pgTutor = true;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
  case 4:
    print("\nClose");
    exit();
    break;
 
  case 100: 
    print("\nSelect template");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = true;
    pgRok = false;
    pgTutor = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    break;
  case 101: 
    print("\nShow Grid");
    showGrid();
    break;

  case 200: 
    print("\nRok");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = true;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 201: 
    print("\nAtasan");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = true;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 202: 
    print("\nGaun");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = true;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;

  case 203: 
    print("\nCelana");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = true;
    pgAtasanLk = false;
    pgCelanaLk = false;
    break;
    
   case 300: 
    print("\nAtasan");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = true;
    pgCelanaLk = false;
    break;
    
   case 301: 
    print("\nCelana");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = true;
    break;
    
 
  case 400: 
    print("\nTexture 1");
    pgTex1 = true;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex1);
    break; 
  case 401:
    print("\nTexture 2");
    pgTex1 = false;
    pgTex2 = true;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex2);
    break; 
  case 402: 
    print("\nTexture 3");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = true;
    pgTex4 = false;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex3);
    break; 
  case 403:
    print("\nTexture 4");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = true;
    pgTex5 = false;
    pg2D = false;
    pgTutor = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex4);
    break; 
  case 404: 
    print("\nTexture 5");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = true;
    pg2D = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgTutor = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex5);
    break; 
  
  case 405: 
    print("\nTexture 6");
    pgTex1 = false;
    pgTex2 = false;
    pgTex3 = false;
    pgTex4 = false;
    pgTex5 = false;
    pgTex6 = true;
    pg2D = false;
    pgRok = false;
    pgAtasan = false;
    pgGaun = false;
    pgCelana = false;
    pgTutor = false;
    pgAtasanLk = false;
    pgCelanaLk = false;
    setPgTexture(imgtex5);
    break;
  
  case -1:
    break;
  default:
    // ERROR 
    println ("\nError 277 with " + menuResult1);
    exit();
    break;
  }
}


public void showCenter(){
  if(!showCenter) showCenter=true;
  else showCenter=false;
}

public void showGrid(){
  if(!grid2D) grid2D = true;
  else grid2D = false;
}

public void showGrid3D(){
  if(!grid3D) grid3D = true;
  else grid3D = false;
}

public void saveProject(){
  File defaultFileName = new File(sketchPath("")+"/Saved Projects"+"/Project.txt");
  selectOutput("Save Project as: ","fileSelectedForSave", defaultFileName);
}

public void drawPgMenuBar(){
  pg[1].beginDraw();
  pg[1].background(25);
  pg[1].fill(0xffD30F0F);
  pg[1].rect(width-40,0,width,pg[1].height);
  pg[1].stroke(255);
  pg[1].line(width-25,8,width-15,17);
  pg[1].line(width-25,17,width-15,8);
  pg[1].endDraw();
}

public void drawPgBasement2D(){
  pg[2].beginDraw();
  pg[2].background(200);
  if(grid2D){
       pg[2].strokeWeight(1);
    pg[2].stroke(135);
    int i=0;
    while(i<=pg[2].width){
      pg[2].line(i,0,i,pg[2].height);
      i+=25;
    }
    int j=0;
    while(j<=pg[2].height){
      pg[2].line(0,j,width,j);
      j+=25;
    }
  }
  pg[2].stroke(255);
    pg[2].strokeWeight(1);
  if(nodes.size()==1){
    pg[2].point(nodes.get(0).x,nodes.get(0).z-pg[1].height);
  }
  if(nodes.size()==2) //draw line if 2D basement just have 2 vertex
    pg[2].line(nodes.get(0).x,nodes.get(0).z-pg[1].height,nodes.get(1).x,nodes.get(1).z-pg[1].height);
  pg[2].endDraw();
}

public void drawPgBasement3D(){
  pg[3].beginDraw();
  pg[3].background(100);
  pg[3].textSize(18);
  //if(nodes.size()<=2 && !threeDimension)
  //  pg[3].text("Buatlah basement 2D pada canvas sebelah kiri.", 25, 50);
  //if(nodes.size()>2 && !threeDimension)
  //  pg[3].text("Tekan ENTER untuk menampilkan hasil 3D.", 25, 50);
  pg[3].stroke(255);
  pg[3].text("Rancangan Busana", 25, 50);
  pg[3].strokeWeight(1);
  pg[3].noFill();
  pg[3].curve(pg[3].width/2+50,50, pg[3].width/2+50,50, pg[3].width/2+20,150, pg[3].width/2-40,180);
  pg[3].curve(pg[3].width/2+50,50, pg[3].width/2+20,150, pg[3].width/2-40,180, pg[3].width/2-50,200);
  pg[3].curve(pg[3].width/2+20,150, pg[3].width/2-40,180, pg[3].width/2-50,200, pg[3].width/2-50,200);
  pg[3].line(pg[3].width/2, 150, pg[3].width/2, 400);
  
  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2-10, 160);
  pg[3].line(pg[3].width/2+10, 200, pg[3].width/2+10, 160);
  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2+10, 200); //leher
  pg[3].line(pg[3].width/2-10, 200, pg[3].width/2-60, 220);
  pg[3].line(pg[3].width/2+10, 200, pg[3].width/2+60, 220);
  
  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2+60, 220);
  pg[3].line(pg[3].width/2-55, 250, pg[3].width/2+55, 250);
  pg[3].line(pg[3].width/2-50, 270, pg[3].width/2+50, 270);
  pg[3].line(pg[3].width/2-35, 340, pg[3].width/2+35, 340); //pinggang atas
  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2-35, 340);
  pg[3].line(pg[3].width/2+60, 220, pg[3].width/2+35, 340);
  
  pg[3].line(pg[3].width/2-60, 220, pg[3].width/2-80, 380); //lengan
  pg[3].line(pg[3].width/2-50, 270, pg[3].width/2-65, 380); 
  pg[3].line(pg[3].width/2+60, 220, pg[3].width/2+80, 380); //lengan
  pg[3].line(pg[3].width/2+50, 270, pg[3].width/2+65, 380); 
  
  pg[3].line(pg[3].width/2-50, 400, pg[3].width/2+50, 400); //pinggang bawah
  pg[3].line(pg[3].width/2-35, 340, pg[3].width/2-50, 400);
  pg[3].line(pg[3].width/2+35, 340, pg[3].width/2+50, 400);
  
  pg[3].line(pg[3].width/2-25, 400, pg[3].width/2-35, 720); 
  pg[3].line(pg[3].width/2+25, 400, pg[3].width/2+35, 720);
  pg[3].line(pg[3].width/2-25, 700, pg[3].width/2-45, 700);
  pg[3].line(pg[3].width/2+25, 700, pg[3].width/2+45, 700);
  
  pg[3].line(pg[3].width/2-50, 400, pg[3].width/2-45, 700);
  pg[3].line(pg[3].width/2-5, 400, pg[3].width/2-25, 700);
  pg[3].line(pg[3].width/2+5, 400, pg[3].width/2+25, 700);
  pg[3].line(pg[3].width/2+50, 400, pg[3].width/2+45, 700);
  pg[3].endDraw();
}

public void setPgTexture(PImage imgtex[]){
  for(int i=1; i<=5; i++){
    pg[i+3].beginDraw();
    pg[i+3].background(255);
    pg[i+3].fill(0);
    pg[i+3].textSize(28);
    pg[i+3].text("Textures",25,50);
    int c = 1;
    for(int j=1; j<=9; j++){
      if(c>=imgtex.length-1){
        c=1;
        break;
      }
      for(int k=1; k<=6; k++){
        if(c>imgtex.length-1){
          break;
        }
        pg[i+3].beginShape();
        pg[i+3].texture(imgtex[c]);
        pg[i+3].vertex(pg[i+3].width-(k*75)+10,j*75,0,0);
        pg[i+3].vertex(pg[i+3].width-(k*75-50)+10,j*75,100,0);
        pg[i+3].vertex(pg[i+3].width-(k*75-50)+10,j*75+50,100,100);
        pg[i+3].vertex(pg[i+3].width-(k*75)+10,j*75+50,0,100);
        pg[i+3].endShape();
        //if(selectedTex==c){
        //  pg[i+3].line(pg[i+3].width-(k*75)+10,j*75,pg[i+3].width-(k*75-50)+10,j*75+50);
        //  pg[i+3].line(pg[i+3].width-(k*75-50)+10,j*75,pg[i+3].width-(k*75)+10,j*75+50);
        //}
        c++;
      }
    }
    pg[i+3].endDraw();
  }
}

public void drawPgTutorial(){
  pg[11].beginDraw();
  pg[11].background(0xff525252);
  pg[11].fill(255);
  pg[11].textSize(28);
  pg[11].text("Tutorial",28,50);
  pg[11].textSize(20);
  pg[11].text("1. Pilihlah Desain Busana wanita ataupun Pria",10,125);
  pg[11].text("     yang berada di Menu.",10,155);
  pg[11].text("2. Anda dapat menghapus / mengubah posisi",10,185);
  pg[11].text("   verteks pada basement 2D dengan klik",10,215);
  pg[11].text("   kanan atau drag pada verteks tersebut.",10,245);
  pg[11].text("3. Ubah kedalam bentuk 3D dengan menekan",10,275);
  pg[11].text("   tombol ENTER.",10,305);
  pg[11].text("4. Anda dapat mengatur lebar / tinggi setiap",10,335);
  pg[11].text("   lantai pada bangunan.",10,365);
  pg[11].text("   - Tekan R untuk memperlebar.",10,395);
  pg[11].text("   - Tekan Shift+R untuk mempersempit.",10,425);
  pg[11].text("   - Tekan H untuk meninggikan.",10,455);
  pg[11].text("   - Tekan Shift+H untuk memendekkan.",10,485);
  pg[11].text("5. Anda dapat menambahkan tekstur pada",10,515);
  pg[11].text("   lantai dengan cara:",10,545);
  pg[11].text("     (i) Pilih lantai yang akan ditambahkan",10,575);
  pg[11].text("         tekstur.",10,605);
  pg[11].text("    (ii) Buka menu Textures.",10,635);
  pg[11].text("   (iii) Pilih tekstur.",10,665);
  pg[11].endDraw();
}

public void drawPgTemplateRok(){
  pg[12].beginDraw();
  pg[12].background(252);
  pg[12].fill(0);
  pg[12].textSize(28);
  pg[12].text("Variasi Rok",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgRok.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgRok.length-1)
        break;
      pg[12].beginShape();
      pg[12].texture(imgRok[c]);
      pg[12].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[12].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[12].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[12].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[12].endShape();
      c++;
    }
  }
  pg[12].endDraw();
}

public void drawPgTemplateAtasan(){
  pg[13].beginDraw();
  pg[13].background(252);
  pg[13].fill(0);
  pg[13].textSize(28);
  pg[13].text("Variasi Atasan",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgAtasan.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgAtasan.length-1)
        break;
      pg[13].beginShape();
      pg[13].texture(imgAtasan[c]);
      pg[13].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[13].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[13].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[13].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[13].endShape();
      c++;
    }
  }
  pg[13].endDraw();
}

public void drawPgTemplateGaun(){
  pg[14].beginDraw();
  pg[14].background(252);
  pg[14].fill(0);
  pg[14].textSize(28);
  pg[14].text("Variasi Gaun",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgGaun.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgGaun.length-1)
        break;
      pg[14].beginShape();
      pg[14].texture(imgGaun[c]);
      pg[14].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[14].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[14].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[14].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[14].endShape();
      c++;
    }
  }
  pg[14].endDraw();
}

public void drawPgTemplateCelana(){
  pg[15].beginDraw();
  pg[15].background(252);
  pg[15].fill(0);
  pg[15].textSize(28);
  pg[15].text("Variasi Celana",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgCelana.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgCelana.length-1)
        break;
      pg[15].beginShape();
      pg[15].texture(imgCelana[c]);
      pg[15].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[15].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[15].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[15].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[15].endShape();
      c++;
    }
  }
  pg[15].endDraw();
}

public void drawPgTemplateAtasanLk(){
  pg[16].beginDraw();
  pg[16].background(252);
  pg[16].fill(0);
  pg[16].textSize(28);
  pg[16].text("Variasi Atasan Laki-Laki",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgAtasanLk.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgAtasanLk.length-1)
        break;
      pg[16].beginShape();
      pg[16].texture(imgAtasanLk[c]);
      pg[16].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[16].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[16].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[16].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[16].endShape();
      c++;
    }
  }
  pg[16].endDraw();
}

public void drawPgTemplateCelanaLk(){
  pg[17].beginDraw();
  pg[17].background(252);
  pg[17].fill(0);
  pg[17].textSize(28);
  pg[17].text("Variasi Celana Laki-Laki",25,50);
  c = 1;
  for(int i=1; i<=9; i++){
    if(c>=imgCelanaLk.length-1){
      c=1;
      break;
    }
    for(int j=1; j<=6; j++){
      if(c>imgCelanaLk.length-1)
        break;
      pg[17].beginShape();
      pg[17].texture(imgCelanaLk[c]);
      pg[17].vertex(pg[4].width-(j*75)+10,i*75,0,0);
      pg[17].vertex(pg[4].width-(j*75-50)+10,i*75,100,0);
      pg[17].vertex(pg[4].width-(j*75-50)+10,i*75+50,100,100);
      pg[17].vertex(pg[4].width-(j*75)+10,i*75+50,0,100);
      pg[17].endShape();
      c++;
    }
  }
  pg[17].endDraw();
}

public void imagePgs(){
  image(pg[1], 0, 0);
  image(pg[2], 0, pg[1].height);
  image(pg[3], width/3, pg[1].height);
  image(pg[10], 0, height-300);
  
  if(pgTex1)
    image(pg[4], 2*width/3, pg[1].height);
  else if(pgTex2)
    image(pg[5], 2*width/3, pg[1].height);
  else if(pgTex3)
    image(pg[6], 2*width/3, pg[1].height);
  else if(pgTex4)
    image(pg[7], 2*width/3, pg[1].height);
  else if(pgTex5)
    image(pg[8], 2*width/3, pg[1].height);
  else if(pgTex6)
    image(pg[9], 2*width/3, pg[1].height);
  else if (pgRok)
    image(pg[12], 2*width/3, pg[1].height);
  else if (pgAtasan)
    image(pg[13], 2*width/3, pg[1].height);
  else if (pgGaun)
    image(pg[14], 2*width/3, pg[1].height);
  else if (pgCelana)
    image(pg[15], 2*width/3, pg[1].height);
  else if (pgAtasanLk)
    image(pg[16], 2*width/3, pg[1].height);
  else if (pgCelanaLk)
    image(pg[17], 2*width/3, pg[1].height);
  else// if(pgTutor)
    image(pg[11], 2*width/3, pg[1].height);
}

public void defineMenus(){
  menuList[0] = new ClassOneDropDownMenu("File", 0); // 23 = x pos
  menuList[0].addNewLine("New", 0); // 0 = index
  menuList[0].addNewLine("Open", 1);
  menuList[0].addNewLine("Save", 2);
  menuList[0].addNewLine("Tutorial", 3);
  menuList[0].addNewLine("Close", 4);
 
  menuList[1] = new ClassOneDropDownMenu("Tools", 100);// x pos
  menuList[1].addNewLine("Optimasi Pola", 100);// 100 = index
  menuList[1].addNewLine("Show Grid 2D", 101);
  
  menuList[2] = new ClassOneDropDownMenu("Wanita", 2*100);// x pos
  menuList[2].addNewLine("Rok", 200);// index
  menuList[2].addNewLine("Atasan", 201);
  menuList[2].addNewLine("Gaun", 202);
  menuList[2].addNewLine("Celana", 203);
  
  menuList[3] = new ClassOneDropDownMenu("Pria", 3*100);// x pos
  menuList[3].addNewLine("Atasan", 300);// index
  menuList[3].addNewLine("Celana", 301);
 
  menuList[4] = new ClassOneDropDownMenu("Textures", 4*100);// x pos
  menuList[4].addNewLine("Texture 1", 400);// index
  menuList[4].addNewLine("Texture 2", 401);
  menuList[4].addNewLine("Texture 3", 402);
  menuList[4].addNewLine("Texture 4", 403);
  menuList[4].addNewLine("Texture 5", 404);
  menuList[4].addNewLine("Texture 6", 405);

}

public void drawLines(){
  line(0, pg[1].height, width, pg[1].height);
  line(width/3, pg[1].height, width/3, height);
  line(2*width/3, pg[1].height, 2*width/3, height);
}

public void drawBasement(){
  if(!newProject){
    base();
    base1();
    int temp=0;
    if(threeDimension){
      for(int j=0; j<=floors.size()-1; j++){
        if(floors.get(j).isSelected){
          temp=j;
          break;
        }
        else if(j==floors.size()-1)
          floors.get(j).isSelected=true;
      }
      for(int i=0; i<floors.size(); i++){
        urlTexture = floors.get(temp).urlTexture;
        //h_default = floors.get(floors.size()-1).h;
        floors.get(i).display();
      }
    }
  }
}

public void drawMenuBar(){
  for(int i=0; i<menuList.length; i++)
    menuList[i].display();
}

public void fileSelectedForSave(File selection){
  if(selection == null)
    println("\nWindow was closed or the user hit cancel.");
  else{
    println("\nUser selected " + selection.getAbsolutePath());
    output = createWriter(selection.getAbsolutePath());
    output.println("nodes"+TAB+nodes.size());
    //output.println(nodes.size());
    for(int i=0; i<=nodes.size()-1; i++)
      output.println("n"+TAB+nodes.get(i).x+TAB+nodes.get(i).z);
    output.println("floors"+TAB+floors.size());
    for(int i=0; i<=floors.size()-1; i++)
      output.println("f"+TAB+floors.get(i).y1_pos+TAB+floors.get(i).h+TAB+floors.get(i).scaleFloor+TAB+floors.get(i).urlTexture);
    output.flush();
    output.close();
  }
}

public void openProject(){
  File start = new File(sketchPath("")+"/Saved Projects"+"/ ");
  selectInput("Select a file to load:", "fileSelectedForLoad", start);
}

public void fileSelectedForLoad(File selection){
  if (selection == null)
    println("\nWindow was closed or the user hit cancel.");
  else{
    println("\nUser selected " + selection.getAbsolutePath());
    newProject();
    parseFile(selection);
    newProject = false;
  }
}

public void parseFile(File selection){
  BufferedReader reader = createReader(selection.getAbsolutePath());
  String line = null;
  try{
    while((line = reader.readLine()) != null){
      String[] pieces = split(line,TAB);
      if(pieces[0].equals("n"))
         nodes.add(new Node(PApplet.parseFloat(pieces[1]),PApplet.parseFloat(pieces[2])));
       
      if(pieces[0].equals("f"))
         floors.add(new Floor(PApplet.parseFloat(pieces[1]),PApplet.parseFloat(pieces[2]),PApplet.parseFloat(pieces[3]),pieces[4]));
    }
    reader.close();
  }
  catch(IOException e){
    e.printStackTrace();
  }
}
