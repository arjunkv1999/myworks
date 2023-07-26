class training{
  var institute = 'software training';
  void details(String name,String location,int phone){
    print('intitute name    :$name');
    print('location         :$location');
    print('phone number     :$phone ');
  }
}
class python extends training{
  String course ='python';
  void coursedetails(double duration,double fee,String placement){
    print('course duration     :$duration');
    print('ciurse fee          :$fee');
    print('placement provide   :$placement');
  }
}
class FLUTTER extends training{
  String course ='FLUTTER';
  void coursedetails(double duration,double fee,String placement){
    print('course duration     :$duration');
    print('ciurse fee          :$fee');
    print('placement provide   :$placement');
  }
}
void main(){
  var flutter = FLUTTER();
  print('course searched is ${flutter.course}');
  flutter.coursedetails(4.5, 29.5, 'yes');
  flutter.details('luminar', 'kakkanad', 7894563456);

  print('***************************');

  var Python =python();
  print('course searched is ${Python.course}');
  Python.coursedetails(5, 32, 'yes');
  Python.details('pentagon space', 'banglore', 8567345689);

}