mixin A{
  int a=20;
  int b=30;

  void show(){
    print("sum is ${a+b}");
  }
  void display();
}
mixin B{
  int i=122;
  int j=130;

  void show1(){
    print("difference is ${i-j}");
  }
  void display1();
}
class C with A,B{
  @override
  void display() {
    show();
  }

  @override
  void display1() {
    show1();
  }
}
void main(){
  var obj= C();
  obj.display();
  obj.display1();
}