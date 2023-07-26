abstract class A{
  String name = "arjun";
  void show(){
    print("My name is $name");
  }
  // abstract function is optional and if  we required.
  void display();

}  
class B extends A{
  String name1 = "kiran";
    @override
      void display(){ //must provide this impementation since display is an abstract function.
        print("His name is $name1");
    }
}
void main() {
  // A obj = A(); //not possible.
  B obj = B();
  obj.show();
  obj.display();
}