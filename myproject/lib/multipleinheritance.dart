class Father{
  void FatherDetails(String name, int age,int phone,String job){// can also be given as void FatherDetails(String name, int age,int phone,String job);
    print("FATHER DETAILS");
    print("name   : $name");
    print("age    : $age");
    print("phone  : $phone");
    print("job    : $job");
  }
}
class Mother{
  void MotherDetails(String name, int age,int phone,String job){ //can also be given as void MotherDetails(String name, int age,int phone,String job);
    print("MOTHER DETAILS");
    print("name   : $name");
    print("age    : $age");
    print("phone  : $phone");
    print("job    : $job");
  }
}
class child1 implements Father,Mother{
  void ChildDetails(String name,int age,int std){
    print("CHILD1 DETAILS");
    print("name   :$name");
    print("age    :$age");
    print("std    :$std");
  }
  @override
  void FatherDetails(String name, int age, int phone, String job) {
    print("FATHER DETAILS");
    print("name   : $name");
    print("age    : $age");
    print("phone  : $phone");
    print("job    : $job");
  }

  @override
  void MotherDetails(String name, int age, int phone, String job) {
    print("MOTHER DETAILS");
    print("name   : $name");
    print("age    : $age");
    print("phone  : $phone");
    print("job    : $job");
  }

}
void main(){
  var obj = child1();
  obj.ChildDetails("appu", 16, 10);
  obj.FatherDetails("ravi", 37, 7890456734, "doctor");
  obj.MotherDetails("leela", 28, 9087654321, "teacher");
}