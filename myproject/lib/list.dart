void main(){
  //1. using [] and creating values manually
  var mylist = ["anu","vinu","ricky","cerin"];
  print("list1 = $mylist");


  //2. list.empty
  var list2 = List.empty(growable: true);//initally in List.empty growable is false
  list2.add(30);
  list2.addAll([20,10,5]);
  print("list2 = $list2");

  
}