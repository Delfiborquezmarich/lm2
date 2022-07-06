
void arcoiris(float vel){
for (int i =0; i< ab.length;i++){
  for (int j =0; j< am.length;j++){
image (arcoirisbueno, ab [i], posY);

   image (arcoirismalo, am[j] , posY2);
  
}}
  if (posY > height) {
    posY =-100;
    vel =random (1,3);
}
posY+=vel;

if (posY2 > height) {
    posY2 =-100;
    
    vel =random (1,3);
}
posY2+=vel;
}
