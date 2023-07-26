class Student{
  int? id;
  String? name;
  int? age;
  int? phone;
  String? email;
  static String course = "flutter";
  static String institute = "luminar";

  //static variable / globally declared variable with static keyword->created inside class / it can be accessed through classname
}
void main(){
  Student obj1 = Student(); //classname or var objectname = constructor;
  print(obj1.id = 1 );
  print(obj1.name = "arjun");
  print(obj1.age = 23);
  print(obj1.phone = 9526801507);
  print(obj1.email = "arjunkvpunnad@gmail.com");
  print("course   :${Student.course}");
  print("institute :${Student.institute}");
  Student obj2 = Student();
  print(obj2.id = 2 );
  print(obj2.name = "akshay");
  print(obj2.age = 20);
  print(obj2.phone = 7306329311);
  print(obj2.email = "18kvakshay@gmail.com");
  print("course   :${Student.course}");
  print("institute :${Student.institute}");

}