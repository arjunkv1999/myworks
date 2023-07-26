void main(){
  // 1. sum of elements of list, sum of even and odd numbers
  var nlist = [1,-3,7,9,0,-6,4,-2,0,10,-8,5];
  int sum = 0;
  int i = 0;
  int sume = 0;
  int sumo = 0;
  int cp = 0;
  int cn = 0;
  int cz = 0;
  
  for(i; i< nlist.length; i++){
    sum += nlist[i];
    if(nlist[i] % 2 == 0 && nlist[i] > 0){
      sume += nlist[i];
    }
    else if(nlist[i] % 2 != 0 && nlist[i] > 0){
      sumo += nlist[i];
    }
    
  }
  print("sum = $sum");
  print('sum of even numbers = $sume');
  print('sum of odd numbers = $sumo');
  //2. count of +ve,-ve and zero in list
  for(int j = 0 ; j < nlist.length ; j++){
    if(nlist[j] > 0){
      cp += 1;
    }
    else if(nlist[j] < 0){
      cn += 1;
    }
    else if(nlist[j] == 0){
      cz += 1;
    }
  }
  print("number of positive numbers = $cp");
  print("number of negative numbers = $cn");
  print("number of zeros = $cz");
  //3. largest element
  int large = nlist[0];
  for(int k =0; k < nlist.length; k++){
    if(large < nlist[k]){
      large = nlist[k];
    }
  }
  print('the largest element of list = $large');
  //4. numbers which are multiples of 2
  var m2 = [];
  for(int i = 0; i < nlist.length; i++){
    if(nlist[i] % 2 == 0 && nlist[i] > 0){
      m2.add(nlist[i]);
      
    }
    print('the numbers which are multiple of 2 = $m2');
  }
      
}