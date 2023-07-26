void main(){
  var list2=[-5,1,10,0,2,-4,0,3,5,8,28,-74,0,41,34,5,-9,62];
  int counto=0;
  int counte=0;
  int countz=0;
  for(int i = 0;i<list2.length;i++){
    if(list2[i] % 2 == 0 && list2[i]!=0){
      counte+=1;
    }
  }
  for(int j =0;j<list2.length;j++){
    if(list2[j] % 2 !=0){
      counto+=1;
    }
  }
  for(int k = 0;k<list2.length;k++){
    if(list2[k]==0){
      countz+=1;
    }
  }
  print("The number of even numbers is $counte");
  print("Number of odd numbers is $counto");
  print("Number of zeros is $countz");
}