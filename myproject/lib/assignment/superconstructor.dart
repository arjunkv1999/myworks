class A{
  A.one(int a){
    print('constructor of clas A');
  }
}
class B extends A{
  B() : super.one(1){
    print('constructor of class B');
  }
  
}
void main(){
  B();
}