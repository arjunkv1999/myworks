void main(){
  int sumodd=0;
  for(int i = 0;i<=25;i++){
    if(i % 2 != 0){
      sumodd+=i;
    }
  }
  print("sum of odd numbers between 1 and 25 is $sumodd");
}