class parent{
  String name = "paul";
  void fun1(){
    print('fun1 from parent');
  }
  void func2(){
    print('func2 from parent');
  }
}
class child extends parent{
  String name = "john";
  void show(){
    print('My name is $name ${super.name}');
  }
  @override
  void func2(){
    print('func2 from child');
    super.func2();
  }
  
}
void main(){
  var obj = child();
  obj.show();
  obj.func2();
}