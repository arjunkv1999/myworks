void main(){
  int a = 20;
  int b = 0;
  print("lets do divission");
  try{
    var div = a~/b;
    print(div);
  }on FormatException{
    print("exception occured");
  }on UnsupportedError{
    print("exception occured");
  }
  catch(e){ //e- object of exception class
    print(e);
  }
  print("thank you");
} 
