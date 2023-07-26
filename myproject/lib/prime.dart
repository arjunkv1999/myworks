void main(){
  var prime =0;
  for(int i =0; i <= 10 ; i++){
    for(int n = 1; n < i/2; n++){
      if(i % n == 0){
        prime = 1;
        
      }
    }
    if(prime == 0){
     print(i);
  }
  }
  
}