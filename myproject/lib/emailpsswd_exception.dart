class login implements Exception{
   String? msg;
  login([this.msg]);
    @override
    String toString(){
      return "exception caught , $msg";
    }
}
void log(String email ,String pswd){
  if(email == "abcd@gmail.com" && pswd == "a123bc"){
    throw login("login successfull with email id $email and password $pswd");
  }else{
    print("login failed");
  }
}
void main(){
  try{
    log("abcd@gmail.com", "a123bc");
  }catch(e){
    print(e.toString());
  }
}
