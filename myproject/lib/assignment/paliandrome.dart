void main(){
  int num=121;
  int rem;
  int sum =0;
  int temp = num;
  while(num > 0){
    rem = num % 10;
    sum = (sum * 10) + rem ;
    num = num ~/ 10;
  }
  if(temp == sum){
    print("$temp is a paliandrome");
  }
  else{
    print("$temp is not a paliandrome");
  }
  String data ="malayalam";
  String revdata = data.split(" ").reversed.join();
  print(revdata);
  if(data == revdata){
    print("paliandrome String");
  }else{
    print("Not a Paliandrome String");
  }
}