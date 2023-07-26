class A{
  //1. default constructor
  // constructor => similar to function but name should same as class name without return type
  //A(){
   // print("default constructor");
  //}
  //2.parameterized constructor
  A(int a, int b){
    print("parameterized constructor");
    print(a+b);
  }
  //3.named constructor
  A.one(){
    print("named default constructor");
  }
  A.two(int x){
    print("parametrized named constructor");
  }
  A.three(int x, {int? y}){
    print("parameterized named constructor with optional value");
  }
}

void main(){
  //var obj1 = A();
  var obj2 = A(2,3);
  var obj3 = A.one();
  var obj4 = A.two(12);
  var obj5 = A.three(4,y:3);

//List.filled
var list3 = List.filled(5,1,growable: true);
list3.add(5);
list3[1]= 2;
list3[2]= 3;
list3[4]= 6;
print("list3 = $list3");

//List.generate
var list4 = List.generate(10,(index) => index + 1);
print("list4 = $list4");

var list5 = List.from([3,4,5]);
print('list5 = $list5');
list5.addAll(list3);
print('list5 = $list5');

var list6 = List.of(list3);
print('list6 = $list6');

var list7 =List.unmodifiable([2,4,6,8,10]);//here cannot add new element or change element and caanot be modified
print('list7 = $list7');
}