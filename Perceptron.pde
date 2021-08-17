
//The activation function
int sign(float n){
  
if(n>=0) return 1;
else return -1;
}



class Perceptrn {
float[] weights;

//Edit the learning rate here!!!
float lr = 0.0005;

//perceptron constructor 
Perceptrn(int n){
weights = new float[n];
for(int i = 0; i<weights.length;i++){
weights[i] = random(-1,1);

    }
  }
  int guess(float[] inputs){
    float sum =0;
    for(int i = 0; i<weights.length;i++){
    sum+=inputs[i]*weights[i];
    }
    return sign(sum);

}

float guessY(float g){
  
  return -weights[2]/weights[1]-weights[0]/weights[1]*g;



}
void train(float[] inputs, int target){
  
int guess = guess(inputs);
int error = target - guess;

//tuning all the weights according to the error
    for(int i = 0; i< weights.length; i++){
  weights[i]+= error*inputs[i]*lr;


    }


  }

}
