class A{
  int a=10;
  int b=20;
   void add(){
    print("sum is ${a+b}");

   }
    void show(){
      print("here is the difference b/w a and b that is ${a-b}");
    }
}
 class B extends A{}//here A is a normal class for B.
 class C implements A{ //here A is an iheritance for class C spo we must override all the functions and data.
  @override
  int a=30;
 
  @override
  int b=20;
 
  @override
  void add() {
    int res=a+b;
    print("sum is $res");
  }
 
  @override
  void show() {
    print('the difference is ${a-b},show function here');
  } 

 }
 void main() {
  C obj = C(); // inheritance with data abstraction.
  obj.show();
  obj.add();

  B obj1=B(); //normal inheritance.
  obj1.add();
  obj1.show();
}