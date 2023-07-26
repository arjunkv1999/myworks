//2. Create multilevel inheritance about your selves.
class education{
  void edetail(String course,String university,int passyr,double cgpa){
    print('course name   :$course');
    print('university    :$university');
    print('passing year  :$passyr');
    print('cgpa          :$cgpa');
  }
}
class personaldetails extends education{
  void pdetails(String housename,String place,int pin){
    print('house name    :$housename');
    print('place         :$place');
    print('pin           :$pin');
  }
}
class myself extends personaldetails{
  void mydetails(String name,int phone,String email,int age){
    print('name   :$name');
    print('phone  :$phone');
    print('email  :$email');
    print('age    :$age');
  }
}
void main(){
  var mine = myself();
  mine.mydetails('ARJUN K V',9526801507,'arjunkvpunnad@gmail.com',23);
  mine.pdetails('NishaNilayam','PUNNAD',670703);
  mine.edetail('B.Tech','KTU',2022,6.57);
}