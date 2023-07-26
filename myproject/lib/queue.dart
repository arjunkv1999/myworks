import 'dart:collection';

void main(){
  var list = [1,2,3,4,5,6,7];
  Queue q1 = Queue();
  Queue q2 = Queue.from(list);
  print(q2);
  q2.addFirst(1000);
  print(q2);
  q2.removeLast();
  print(q2);
}