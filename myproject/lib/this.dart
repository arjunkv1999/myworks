class ABC{
  String? name;
  int? age;
  ABC(String name,int age){
    this.name=name;
    this.age=age;
  }
  void show(){
    print('my name is $name , and am $age years old');
    display();
  }
  static void display(){
    //instance variable cannot be accessed from a static function.
    int a=1000;
    print(a);
  }
}
void main(){
  ABC obj = ABC('arun',25);
  obj.show();
  ABC.display();
}