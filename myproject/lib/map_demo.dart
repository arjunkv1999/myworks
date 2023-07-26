void main(){
  var map = <String,dynamic>{"key1":1,"key2":2,"key3":3};
  print(map);

  var map1= Map();
  map1['k1']="myvalue";
  map1[2]=20;
  print(map1);

  var map2 = Map.fromEntries(map.entries);
  print(map2);

  var list = [1,2,3,4];
  var map3 = Map.fromIterable(list);
  print(map3);

  var list1=["v1","v2","v3","v4"];
  var map4 = Map.fromIterables(list1, list);
  print(map4);

  map.forEach((key, value) {
    print(key);
    print(value);
   });
}