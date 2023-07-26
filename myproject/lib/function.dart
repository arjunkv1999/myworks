//main function
void main(){
 sum();
 print(show());
 add(23,60);
 int result = sub("hello",3,56);
 print("the result is $result");
 display();
 print(addno());
 see(4,8);
}

// user defined function default function without return value
void sum(){
 print("sum is ${20+30}");
}

//user defined function default function with return value
String show(){
  String name = "arjun";
  return name;
}
//user defined function parameterized function without return type
void add(int a, int b){
  print("sum2 = ${a+b}");
}
//user defined function parameterized functiom with return type
int sub(String a, int b, int c){
  print("value of a = $a");
  int sum = b+c;
  return sum;
}
//lamda function 
void display() => print("hello");
//lamda function with return type
int addno() => 100+10;
//lamda function with parameter
void see(int a, int b) => print(' $a, $b');