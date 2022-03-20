PImage image;
color fin;
int saved;
void setup(){
  size(800,533);
  image=loadImage("image.jpg");
  saved=5;
}
void draw(){
  image.loadPixels();
  for (int i = 0; i < image.width; i++){
    for (int j = 0; j < image.height; j++){
      int index=j+i*image.height;
      color pix=image.pixels[index];
      
      float r=red(pix);
      float g=green(pix);
      float b=blue(pix);
      
      fin=color((r-g)*2,(g-b)*2,(b-r)*2);
      image.pixels[index]=fin;
    }
  }
  image.updatePixels();
  saved--;
  image(image,0,0);
  if(saved==1){
    image.save("nightMareFuel.jpg");
    saved=0;
  }
}
