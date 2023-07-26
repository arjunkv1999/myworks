void main() async{
  print("Start Fetching Recipes");

  await Future.delayed(Duration(seconds: 3),(){
    print("Recipes Fetched");
  });
  print("After Fetching Recipes");
  print("Thank U");
}