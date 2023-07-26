void main(){
  print("Start Fetching Recipes");

  Future.delayed(Duration(seconds: 2),(){
      print("Recipes Fetched");
  }).then((value) => print("After Fetching Recipes"));

  print("Thank U");
}