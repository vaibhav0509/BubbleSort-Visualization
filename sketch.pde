float[] values;

int i = 0;
int j = 0;

void setup(){
  fullScreen();
  //size(400, 300);
  values = new float[width];
  for (int i =0 ; i< values.length; i++){
    //values[i] = noise(i/167.0)*height;
    values[i] = random(height);
  }
}
  
void draw(){
  background(0);     
  
  //Logic of Bubble Sort
 if (i < values.length){
   for (int j = 0 ; j< values.length-i-1; j++){
   
         float a = values[j];
         float b = values[j+1];
         if (a > b){
           swap(values,j, j+1);
         }
   }
  }
 else{
    println("finished");
    noLoop();
 }
 i++;
 
 
 //Lines Maker
for (int i =0 ; i< values.length; i++){
  stroke(#DDAABB);
    
    line(i, height, i, height-values[i]);
  }
}

void swap(float[] arr, int a , int b){
  float temp = arr[a];
  arr[a] = arr[b];
  arr[b] = temp;

}
