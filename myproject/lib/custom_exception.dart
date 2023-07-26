class myexception implements Exception{
  String? msg;
  myexception([this.msg]);
    @override
    String toString(){
      return "exception caught , $msg";
    }
}
void check(int age){
  if(age<18){
    throw myexception("Age must be grater than or equal to 18");
  }else{
    print("welcome");
  }
}
void main(){
 try{
  check(12);
 }catch(e){
  print(e.toString());
 }
}