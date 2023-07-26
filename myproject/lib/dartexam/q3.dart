void main(){
  var list1= [1,10,2,3,5,8,28,41,34,5,62];
  var m4=[];
  for(int i = 0;i< list1.length;i++){
    if(list1[i]>2 && list1[i] % 4 == 0){
      m4.add(list1[i]);
    }
    
  }
  print("the numbers which are greater than 2 and multiple of 4 are $m4");
}