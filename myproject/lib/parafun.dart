void main(){
 func1(12,'hello',7,5.6);
 func2("arjun",b:20,c:26);
 func3(9526801507,name:"arjun",age:23);
 func3(7306329311,name:"akshay",course:"python");
 print(".................................");
 func4(1,9034567843,name:"aarav",mark:94);
 print("*********************************");
 func4(2,7645362378,name:"bibin",age:16,mark:78);
 print("*********************************");
 func4(12,8568907654,name:"arun",age:14,classs:9,mark:98);
}
//optional positional parameterized function
void func1(int x, [String? a, int? b, double? c]){
  print('x  : $x');
  print('a  : $a');
  print('b  : $b');
  print('c  : $c');
}
//optional named parameterized function
void func2(String name,{int? a,required int b, double? c}){
  print('a  : $a');
  print('b  : $b');
  print('c  : $c');
  print("name : $name");
}
//optional parameterized function with default value
void func3(int phone,{ required String name, int? age, String course = "FLUTTER"}){
  print("phone  : $phone");
  print("name   : $name");
  print("age    : $age");
  print("course : $course");
}
void func4(int rollno,int phone,{required String name, int? age, int classs=10,required double mark}){
  print("roll_no   : $rollno");
  print("phone     : $phone");
  print("name      : $name");
  print("age       : $age");
  print("class     : $classs");
  print("mark      : $mark");
  
}