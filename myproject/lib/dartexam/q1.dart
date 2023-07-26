abstract class father{
  void fatherdetails(String name,String job,int age,int phone);
}
abstract class mother{
  void motherdetails(String name,String job,int age,int phone);
}
class Child1 implements father,mother{
  void child1details(String name,int age,int std,String school){
    print("Name       :$name ");
    print("Age        :$age");
    print("standard   :$std");
    print("school     :$school");
  }
  
  @override
  void fatherdetails(String name, String job, int age, int phone) {
    print("Father Name    :$name");
    print("occupation     :$job");
    print("Father Age     :$age");
    print("Father Phone   :$phone");
  }
  
  @override
  void motherdetails(String name, String job, int age, int phone) {
    print("Mother Name    :$name");
    print("occupation     :$job");
    print("Mother Age     :$age");
    print("Mother Phone   :$phone");
  }
}
void main(){
  var obj = Child1();
  obj.child1details("Kiran Kumar", 17, 12, "Iritty GVHSS");
  obj.fatherdetails("Arun P ", "Buisness", 45, 9847801503);
  obj.motherdetails("Kamala Kumari", "Teacher", 38, 9587904367);
}