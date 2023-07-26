class A{
  int call(int a){
    return a;
  }
}
void main(){
  var obj=A();
  var result=obj(12);
  print(result);
}