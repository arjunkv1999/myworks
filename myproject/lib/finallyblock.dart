void main(){
  print("hi all");
  try{
    var div = 20~/0;
    print(div);
  }on FormatException{
    print("a format exception occured");
  }catch(e){
    print("exception occured, $e");
  }
  finally{
    print("always executed");
  }
  print("thank u");
}