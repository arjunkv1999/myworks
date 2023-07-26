void main(){
  var myset = {1,2,3,4,5};
  print(myset);
  Set set1 = Set();
  set1.add(10);
  set1.add(20);
  set1.addAll({30,40,50,60,1,3});
  print(set1);
  Set set2 = Set.identity();
  set2.addAll({1,3,5,7,9});
  print(set2);

  print(set1.union(set2));
  print(set1.intersection(set2));
  print(set1.difference(set2));
}