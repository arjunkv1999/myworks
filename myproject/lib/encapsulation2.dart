import 'package:myproject/encapsulation1.dart';

void main(){
  var obj = Privatedata();
  obj.myName='akash';//setter
  obj.myAge=20;


  print(obj.myName);
  print(obj.myAge);    //getter
  print(obj.myPhone);


  //print(obj.name);
  //print(obj.age);  //behave like a normal class
  //print(obj.phone);
}