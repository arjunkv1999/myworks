//example of custom exception.
class userlogin implements Exception{
  String? msg;
  userlogin([this.msg]);
    @override
    String toString(){
      return "exception caught , $msg";
    }
}
void login(String emailid,String psswd){
  if(emailid=="arj@gmail.com" && psswd=="a123b"){
    throw userlogin("successfull login of user $emailid");
  }else{
    print("login failed ,either $emailid is wrong or $psswd");
  }
}




void main(){
  try{
    login("arj@gmail.com", "a123b");
  }catch(e){
    print(e.toString());
  }
}