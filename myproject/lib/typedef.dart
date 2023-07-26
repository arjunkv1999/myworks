typedef func(int a,int b);
void add(int a, int b){
  print("sum is ${a+b}");
}
void sub(int a, int b){
  print("difference is ${a-b}");
}
void sum(int a,int b,int c ){
  print("the sum is ${a+b+c}");
}
void main(){
  func a =add;
  a(2,3);
  a(70,30);

  a=sub;
  a(5,4);
  a(120,160);
}