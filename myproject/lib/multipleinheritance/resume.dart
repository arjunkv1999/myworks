abstract class education{
  void edetail(String course,String university,int passyr,double cgpa);
    
}
abstract class personaldetails {
  void pdetails(String housename,String place,int pin);
   
}
abstract class myself {
  void mydetails(String name,int phone,String email,int age);
}
class Myresume implements education,personaldetails,myself{
  @override
  void edetail(String course, String university, int passyr, double cgpa) {
    print('course name   :$course');
    print('university    :$university');
    print('passing year  :$passyr');
    print('cgpa          :$cgpa');
  }

  @override
  void mydetails(String name, int phone, String email, int age) {
    print('name   :$name');
    print('phone  :$phone');
    print('email  :$email');
    print('age    :$age');
  }

  @override
  void pdetails(String housename, String place, int pin) {
    print('house name    :$housename');
    print('place         :$place');
    print('pin           :$pin');
  }

}
void main() {
  var obj = Myresume();
  obj.edetail("B.Tech", "KTU", 2022, 6.57);
  obj.pdetails("NishaNilayam", "PUNNAD", 670703);
  obj.mydetails("ARJUN K V", 9526801507, "arjunkvpunnad@gmail.com", 23);
  
}